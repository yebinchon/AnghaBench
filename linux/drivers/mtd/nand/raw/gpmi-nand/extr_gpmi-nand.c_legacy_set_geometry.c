
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {int oobsize; int writesize; } ;
struct bch_geometry {int metadata_size; int gf_len; int ecc_chunk_size; int ecc_chunk_count; int ecc_strength; int page_size; int payload_size; unsigned int auxiliary_size; unsigned int auxiliary_status_offset; unsigned int block_mark_byte_offset; unsigned int block_mark_bit_offset; } ;
struct gpmi_nand_data {int swap_block_mark; TYPE_1__* devdata; int dev; int nand; struct bch_geometry bch_geometry; } ;
struct TYPE_2__ {int bch_max_ecc_strength; } ;


 unsigned int ALIGN (int,int) ;
 int EINVAL ;
 int dev_err (int ,char*,int,int ) ;
 int get_ecc_strength (struct gpmi_nand_data*) ;
 int gpmi_check_ecc (struct gpmi_nand_data*) ;
 struct mtd_info* nand_to_mtd (int *) ;

__attribute__((used)) static int legacy_set_geometry(struct gpmi_nand_data *this)
{
 struct bch_geometry *geo = &this->bch_geometry;
 struct mtd_info *mtd = nand_to_mtd(&this->nand);
 unsigned int metadata_size;
 unsigned int status_size;
 unsigned int block_mark_bit_offset;






 geo->metadata_size = 10;


 geo->gf_len = 13;


 geo->ecc_chunk_size = 512;
 while (geo->ecc_chunk_size < mtd->oobsize) {
  geo->ecc_chunk_size *= 2;
  geo->gf_len = 14;
 }

 geo->ecc_chunk_count = mtd->writesize / geo->ecc_chunk_size;


 geo->ecc_strength = get_ecc_strength(this);
 if (!gpmi_check_ecc(this)) {
  dev_err(this->dev,
   "ecc strength: %d cannot be supported by the controller (%d)\n"
   "try to use minimum ecc strength that NAND chip required\n",
   geo->ecc_strength,
   this->devdata->bch_max_ecc_strength);
  return -EINVAL;
 }

 geo->page_size = mtd->writesize + geo->metadata_size +
  (geo->gf_len * geo->ecc_strength * geo->ecc_chunk_count) / 8;
 geo->payload_size = mtd->writesize;







 metadata_size = ALIGN(geo->metadata_size, 4);
 status_size = ALIGN(geo->ecc_chunk_count, 4);

 geo->auxiliary_size = metadata_size + status_size;
 geo->auxiliary_status_offset = metadata_size;

 if (!this->swap_block_mark)
  return 0;
 block_mark_bit_offset = mtd->writesize * 8 -
  (geo->ecc_strength * geo->gf_len * (geo->ecc_chunk_count - 1)
    + geo->metadata_size * 8);

 geo->block_mark_byte_offset = block_mark_bit_offset / 8;
 geo->block_mark_bit_offset = block_mark_bit_offset % 8;
 return 0;
}
