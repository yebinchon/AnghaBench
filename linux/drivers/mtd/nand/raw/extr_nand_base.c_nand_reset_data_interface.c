
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {int data_interface; TYPE_2__* controller; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* setup_data_interface ) (struct nand_chip*,int,int *) ;} ;


 int NAND_SDR_IFACE ;
 int nand_has_setup_data_iface (struct nand_chip*) ;
 int onfi_fill_data_interface (struct nand_chip*,int ,int ) ;
 int pr_err (char*) ;
 int stub1 (struct nand_chip*,int,int *) ;

__attribute__((used)) static int nand_reset_data_interface(struct nand_chip *chip, int chipnr)
{
 int ret;

 if (!nand_has_setup_data_iface(chip))
  return 0;
 onfi_fill_data_interface(chip, NAND_SDR_IFACE, 0);
 ret = chip->controller->ops->setup_data_interface(chip, chipnr,
       &chip->data_interface);
 if (ret)
  pr_err("Failed to configure data interface to SDR timing mode 0\n");

 return ret;
}
