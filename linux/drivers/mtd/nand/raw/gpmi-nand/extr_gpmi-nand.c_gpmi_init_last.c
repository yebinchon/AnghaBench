
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int strength; int read_subpage; int size; int mode; int write_oob_raw; int read_oob_raw; int write_page_raw; int read_page_raw; int write_oob; int read_oob; int write_page; int read_page; } ;
struct nand_chip {int options; struct nand_ecc_ctrl ecc; } ;
struct mtd_info {int dummy; } ;
struct bch_geometry {int ecc_strength; int gf_len; int ecc_chunk_size; } ;
struct gpmi_nand_data {struct bch_geometry bch_geometry; struct nand_chip nand; } ;


 scalar_t__ GPMI_IS_MX6 (struct gpmi_nand_data*) ;
 int NAND_ECC_HW ;
 int NAND_SUBPAGE_READ ;
 int gpmi_ecc_read_oob ;
 int gpmi_ecc_read_oob_raw ;
 int gpmi_ecc_read_page ;
 int gpmi_ecc_read_page_raw ;
 int gpmi_ecc_read_subpage ;
 int gpmi_ecc_write_oob ;
 int gpmi_ecc_write_oob_raw ;
 int gpmi_ecc_write_page ;
 int gpmi_ecc_write_page_raw ;
 int gpmi_ooblayout_ops ;
 int gpmi_set_geometry (struct gpmi_nand_data*) ;
 int mtd_set_ooblayout (struct mtd_info*,int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_init_last(struct gpmi_nand_data *this)
{
 struct nand_chip *chip = &this->nand;
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_ecc_ctrl *ecc = &chip->ecc;
 struct bch_geometry *bch_geo = &this->bch_geometry;
 int ret;


 ret = gpmi_set_geometry(this);
 if (ret)
  return ret;


 ecc->read_page = gpmi_ecc_read_page;
 ecc->write_page = gpmi_ecc_write_page;
 ecc->read_oob = gpmi_ecc_read_oob;
 ecc->write_oob = gpmi_ecc_write_oob;
 ecc->read_page_raw = gpmi_ecc_read_page_raw;
 ecc->write_page_raw = gpmi_ecc_write_page_raw;
 ecc->read_oob_raw = gpmi_ecc_read_oob_raw;
 ecc->write_oob_raw = gpmi_ecc_write_oob_raw;
 ecc->mode = NAND_ECC_HW;
 ecc->size = bch_geo->ecc_chunk_size;
 ecc->strength = bch_geo->ecc_strength;
 mtd_set_ooblayout(mtd, &gpmi_ooblayout_ops);






 if (GPMI_IS_MX6(this) &&
  ((bch_geo->gf_len * bch_geo->ecc_strength) % 8) == 0) {
  ecc->read_subpage = gpmi_ecc_read_subpage;
  chip->options |= NAND_SUBPAGE_READ;
 }

 return 0;
}
