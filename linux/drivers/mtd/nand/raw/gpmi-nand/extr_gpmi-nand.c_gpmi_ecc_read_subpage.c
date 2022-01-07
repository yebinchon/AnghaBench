
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct bch_geometry {int gf_len; int ecc_strength; int block_mark_byte_offset; int metadata_size; int ecc_chunk_size; } ;
struct gpmi_nand_data {int bch_flashlayout0; int bch_flashlayout1; int bch; int dev; scalar_t__ swap_block_mark; struct bch_geometry bch_geometry; } ;


 int BF_BCH_FLASH0LAYOUT0_DATA0_SIZE (int ,struct gpmi_nand_data*) ;
 int BF_BCH_FLASH0LAYOUT0_ECC0 (unsigned int,struct gpmi_nand_data*) ;
 int BF_BCH_FLASH0LAYOUT0_GF (int,struct gpmi_nand_data*) ;
 int BF_BCH_FLASH0LAYOUT0_META_SIZE (int) ;
 int BF_BCH_FLASH0LAYOUT0_NBLOCKS (int) ;
 int BF_BCH_FLASH0LAYOUT1_DATAN_SIZE (int ,struct gpmi_nand_data*) ;
 int BF_BCH_FLASH0LAYOUT1_ECCN (unsigned int,struct gpmi_nand_data*) ;
 int BF_BCH_FLASH0LAYOUT1_GF (int,struct gpmi_nand_data*) ;
 int BF_BCH_FLASH0LAYOUT1_PAGE_SIZE (int) ;
 int dev_dbg (int ,char*,int,int,int,int,...) ;
 unsigned int gpmi_count_bitflips (struct nand_chip*,int *,int,int,int) ;
 int gpmi_ecc_read_page (struct nand_chip*,int *,int ,int) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int,int *,int) ;

__attribute__((used)) static int gpmi_ecc_read_subpage(struct nand_chip *chip, uint32_t offs,
     uint32_t len, uint8_t *buf, int page)
{
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 struct bch_geometry *geo = &this->bch_geometry;
 int size = chip->ecc.size;
 int meta, n, page_size;
 unsigned int max_bitflips;
 unsigned int ecc_strength;
 int first, last, marker_pos;
 int ecc_parity_size;
 int col = 0;
 int ret;


 ecc_parity_size = geo->gf_len * geo->ecc_strength / 8;


 first = offs / size;
 last = (offs + len - 1) / size;

 if (this->swap_block_mark) {







  marker_pos = geo->block_mark_byte_offset / size;
  if (last >= marker_pos && first <= marker_pos) {
   dev_dbg(this->dev,
    "page:%d, first:%d, last:%d, marker at:%d\n",
    page, first, last, marker_pos);
   return gpmi_ecc_read_page(chip, buf, 0, page);
  }
 }

 meta = geo->metadata_size;
 if (first) {
  col = meta + (size + ecc_parity_size) * first;
  meta = 0;
  buf = buf + first * size;
 }

 ecc_parity_size = geo->gf_len * geo->ecc_strength / 8;

 n = last - first + 1;
 page_size = meta + (size + ecc_parity_size) * n;
 ecc_strength = geo->ecc_strength >> 1;

 this->bch_flashlayout0 = BF_BCH_FLASH0LAYOUT0_NBLOCKS(n - 1) |
  BF_BCH_FLASH0LAYOUT0_META_SIZE(meta) |
  BF_BCH_FLASH0LAYOUT0_ECC0(ecc_strength, this) |
  BF_BCH_FLASH0LAYOUT0_GF(geo->gf_len, this) |
  BF_BCH_FLASH0LAYOUT0_DATA0_SIZE(geo->ecc_chunk_size, this);

 this->bch_flashlayout1 = BF_BCH_FLASH0LAYOUT1_PAGE_SIZE(page_size) |
  BF_BCH_FLASH0LAYOUT1_ECCN(ecc_strength, this) |
  BF_BCH_FLASH0LAYOUT1_GF(geo->gf_len, this) |
  BF_BCH_FLASH0LAYOUT1_DATAN_SIZE(geo->ecc_chunk_size, this);

 this->bch = 1;

 ret = nand_read_page_op(chip, page, col, buf, page_size);
 if (ret)
  return ret;

 dev_dbg(this->dev, "page:%d(%d:%d)%d, chunk:(%d:%d), BCH PG size:%d\n",
  page, offs, len, col, first, n, page_size);

 max_bitflips = gpmi_count_bitflips(chip, buf, first, last, meta);

 return max_bitflips;
}
