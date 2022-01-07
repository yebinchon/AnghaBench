
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int * oob_poi; } ;
struct mtd_info {int oobsize; } ;
struct bch_geometry {int auxiliary_status_offset; int ecc_chunk_count; int page_size; } ;
struct gpmi_nand_data {int bch; scalar_t__ auxiliary_virt; struct bch_geometry bch_geometry; } ;


 int block_mark_swapping (struct gpmi_nand_data*,int *,scalar_t__) ;
 int gpmi_bch_layout_std (struct gpmi_nand_data*) ;
 unsigned int gpmi_count_bitflips (struct nand_chip*,int *,int ,int ,int ) ;
 int memset (int *,int ,int ) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_ecc_read_page(struct nand_chip *chip, uint8_t *buf,
         int oob_required, int page)
{
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct bch_geometry *geo = &this->bch_geometry;
 unsigned int max_bitflips;
 int ret;

 gpmi_bch_layout_std(this);
 this->bch = 1;

 ret = nand_read_page_op(chip, page, 0, buf, geo->page_size);
 if (ret)
  return ret;

 max_bitflips = gpmi_count_bitflips(chip, buf, 0,
        geo->ecc_chunk_count,
        geo->auxiliary_status_offset);


 block_mark_swapping(this, buf, this->auxiliary_virt);

 if (oob_required) {
  memset(chip->oob_poi, ~0, mtd->oobsize);
  chip->oob_poi[0] = ((uint8_t *)this->auxiliary_virt)[0];
 }

 return max_bitflips;
}
