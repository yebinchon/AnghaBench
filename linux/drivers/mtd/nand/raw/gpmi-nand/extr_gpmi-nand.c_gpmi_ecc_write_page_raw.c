
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
typedef int u8 ;
struct nand_chip {int const* oob_poi; } ;
struct mtd_info {size_t writesize; size_t oobsize; } ;
struct bch_geometry {int ecc_chunk_size; int ecc_strength; int gf_len; size_t metadata_size; int ecc_chunk_count; } ;
struct gpmi_nand_data {scalar_t__ swap_block_mark; int * raw_buffer; struct bch_geometry bch_geometry; } ;


 int gpmi_copy_bits (int *,size_t,int const*,size_t,int) ;
 int memcpy (int *,int const*,size_t) ;
 int memset (int *,int,size_t) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_op (struct nand_chip*,int,int ,int *,size_t) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int swap (int ,int ) ;

__attribute__((used)) static int gpmi_ecc_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
       int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 struct bch_geometry *nfc_geo = &this->bch_geometry;
 int eccsize = nfc_geo->ecc_chunk_size;
 int eccbits = nfc_geo->ecc_strength * nfc_geo->gf_len;
 u8 *tmp_buf = this->raw_buffer;
 uint8_t *oob = chip->oob_poi;
 size_t dst_bit_off;
 size_t oob_bit_off;
 size_t oob_byte_off;
 int step;






 if (!buf || !oob_required)
  memset(tmp_buf, 0xff, mtd->writesize + mtd->oobsize);





 memcpy(tmp_buf, oob, nfc_geo->metadata_size);
 oob_bit_off = nfc_geo->metadata_size * 8;
 dst_bit_off = oob_bit_off;


 for (step = 0; step < nfc_geo->ecc_chunk_count; step++) {
  if (buf)
   gpmi_copy_bits(tmp_buf, dst_bit_off,
           buf, step * eccsize * 8, eccsize * 8);
  dst_bit_off += eccsize * 8;


  if (step == nfc_geo->ecc_chunk_count - 1 &&
      (oob_bit_off + eccbits) % 8)
   eccbits += 8 - ((oob_bit_off + eccbits) % 8);

  if (oob_required)
   gpmi_copy_bits(tmp_buf, dst_bit_off,
           oob, oob_bit_off, eccbits);

  dst_bit_off += eccbits;
  oob_bit_off += eccbits;
 }

 oob_byte_off = oob_bit_off / 8;

 if (oob_required && oob_byte_off < mtd->oobsize)
  memcpy(tmp_buf + mtd->writesize + oob_byte_off,
         oob + oob_byte_off, mtd->oobsize - oob_byte_off);
 if (this->swap_block_mark)
  swap(tmp_buf[0], tmp_buf[mtd->writesize]);

 return nand_prog_page_op(chip, page, 0, tmp_buf,
     mtd->writesize + mtd->oobsize);
}
