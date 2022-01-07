
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int block_markbad; } ;
struct nand_chip {TYPE_6__* controller; int options; int * badblock_pattern; TYPE_4__ legacy; } ;
struct TYPE_7__ {int parent; } ;
struct mtd_info {char* name; TYPE_1__ dev; } ;
struct TYPE_12__ {int * ops; } ;
struct TYPE_11__ {int payload_size; int auxiliary_size; } ;
struct gpmi_nand_data {int swap_block_mark; TYPE_6__ base; TYPE_5__ bch_geometry; TYPE_3__* pdev; int dev; struct nand_chip nand; } ;
struct TYPE_8__ {int of_node; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;


 int GPMI_IS_MX23 (struct gpmi_nand_data*) ;
 scalar_t__ GPMI_IS_MX6 (struct gpmi_nand_data*) ;
 int NAND_NO_SUBPAGE_WRITE ;
 int gpmi_alloc_dma_buffer (struct gpmi_nand_data*) ;
 int gpmi_bbt_descr ;
 int gpmi_block_markbad ;
 int gpmi_free_dma_buffer (struct gpmi_nand_data*) ;
 int gpmi_nand_controller_ops ;
 int mtd_device_register (struct mtd_info*,int *,int ) ;
 int nand_boot_init (struct gpmi_nand_data*) ;
 int nand_cleanup (struct nand_chip*) ;
 int nand_controller_init (TYPE_6__*) ;
 int nand_create_bbt (struct nand_chip*) ;
 int nand_scan (struct nand_chip*,int) ;
 int nand_set_controller_data (struct nand_chip*,struct gpmi_nand_data*) ;
 int nand_set_flash_node (struct nand_chip*,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int gpmi_nand_init(struct gpmi_nand_data *this)
{
 struct nand_chip *chip = &this->nand;
 struct mtd_info *mtd = nand_to_mtd(chip);
 int ret;


 mtd->name = "gpmi-nand";
 mtd->dev.parent = this->dev;


 nand_set_controller_data(chip, this);
 nand_set_flash_node(chip, this->pdev->dev.of_node);
 chip->legacy.block_markbad = gpmi_block_markbad;
 chip->badblock_pattern = &gpmi_bbt_descr;
 chip->options |= NAND_NO_SUBPAGE_WRITE;


 this->swap_block_mark = !GPMI_IS_MX23(this);





 this->bch_geometry.payload_size = 1024;
 this->bch_geometry.auxiliary_size = 128;
 ret = gpmi_alloc_dma_buffer(this);
 if (ret)
  goto err_out;

 nand_controller_init(&this->base);
 this->base.ops = &gpmi_nand_controller_ops;
 chip->controller = &this->base;

 ret = nand_scan(chip, GPMI_IS_MX6(this) ? 2 : 1);
 if (ret)
  goto err_out;

 ret = nand_boot_init(this);
 if (ret)
  goto err_nand_cleanup;
 ret = nand_create_bbt(chip);
 if (ret)
  goto err_nand_cleanup;

 ret = mtd_device_register(mtd, ((void*)0), 0);
 if (ret)
  goto err_nand_cleanup;
 return 0;

err_nand_cleanup:
 nand_cleanup(chip);
err_out:
 gpmi_free_dma_buffer(this);
 return ret;
}
