
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int const* oob_poi; } ;
struct mtd_info {int writesize; } ;
struct bch_geometry {int page_size; int auxiliary_size; } ;
struct gpmi_nand_data {int bch; int * auxiliary_virt; int * data_buffer_dma; scalar_t__ swap_block_mark; int dev; struct bch_geometry bch_geometry; } ;


 int block_mark_swapping (struct gpmi_nand_data*,int *,int *) ;
 int dev_dbg (int ,char*) ;
 int gpmi_bch_layout_std (struct gpmi_nand_data*) ;
 int memcpy (int *,int const*,int ) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int nand_prog_page_op (struct nand_chip*,int,int ,int const*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_ecc_write_page(struct nand_chip *chip, const uint8_t *buf,
          int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 struct bch_geometry *nfc_geo = &this->bch_geometry;
 int ret;

 dev_dbg(this->dev, "ecc write page.\n");

 gpmi_bch_layout_std(this);
 this->bch = 1;

 memcpy(this->auxiliary_virt, chip->oob_poi, nfc_geo->auxiliary_size);

 if (this->swap_block_mark) {




  memcpy(this->data_buffer_dma, buf, mtd->writesize);
  buf = this->data_buffer_dma;
  block_mark_swapping(this, this->data_buffer_dma,
        this->auxiliary_virt);
 }

 ret = nand_prog_page_op(chip, page, 0, buf, nfc_geo->page_size);

 return ret;
}
