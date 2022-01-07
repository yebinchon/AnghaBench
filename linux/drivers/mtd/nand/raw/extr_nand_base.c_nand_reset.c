
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_data_interface {int dummy; } ;
struct nand_chip {struct nand_data_interface data_interface; int onfi_timing_mode_default; } ;


 int nand_deselect_target (struct nand_chip*) ;
 int nand_reset_data_interface (struct nand_chip*,int) ;
 int nand_reset_op (struct nand_chip*) ;
 int nand_select_target (struct nand_chip*,int) ;
 int nand_setup_data_interface (struct nand_chip*,int) ;

int nand_reset(struct nand_chip *chip, int chipnr)
{
 struct nand_data_interface saved_data_intf = chip->data_interface;
 int ret;

 ret = nand_reset_data_interface(chip, chipnr);
 if (ret)
  return ret;






 nand_select_target(chip, chipnr);
 ret = nand_reset_op(chip);
 nand_deselect_target(chip);
 if (ret)
  return ret;
 if (!chip->onfi_timing_mode_default)
  return 0;

 chip->data_interface = saved_data_intf;
 ret = nand_setup_data_interface(chip, chipnr);
 if (ret)
  return ret;

 return 0;
}
