
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int bbt_options; int options; } ;
struct gpmi_nand_data {int swap_block_mark; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 int NAND_SKIP_BBTSCAN ;
 int dev_dbg (TYPE_1__*,char*,char*) ;
 int gpmi_init_last (struct gpmi_nand_data*) ;
 struct gpmi_nand_data* nand_get_controller_data (struct nand_chip*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;

__attribute__((used)) static int gpmi_nand_attach_chip(struct nand_chip *chip)
{
 struct gpmi_nand_data *this = nand_get_controller_data(chip);
 int ret;

 if (chip->bbt_options & NAND_BBT_USE_FLASH) {
  chip->bbt_options |= NAND_BBT_NO_OOB;

  if (of_property_read_bool(this->dev->of_node,
       "fsl,no-blockmark-swap"))
   this->swap_block_mark = 0;
 }
 dev_dbg(this->dev, "Blockmark swapping %sabled\n",
  this->swap_block_mark ? "en" : "dis");

 ret = gpmi_init_last(this);
 if (ret)
  return ret;

 chip->options |= NAND_SKIP_BBTSCAN;

 return 0;
}
