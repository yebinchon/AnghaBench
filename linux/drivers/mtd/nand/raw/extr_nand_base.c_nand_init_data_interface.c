
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* onfi; } ;
struct nand_chip {int onfi_timing_mode_default; int data_interface; TYPE_2__* controller; TYPE_3__ parameters; } ;
struct TYPE_8__ {int async_timing_mode; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int (* setup_data_interface ) (struct nand_chip*,int ,int *) ;} ;


 int GENMASK (int,int ) ;
 int NAND_DATA_IFACE_CHECK_ONLY ;
 int NAND_SDR_IFACE ;
 int fls (int) ;
 int nand_has_setup_data_iface (struct nand_chip*) ;
 int onfi_fill_data_interface (struct nand_chip*,int ,int) ;
 int stub1 (struct nand_chip*,int ,int *) ;

__attribute__((used)) static int nand_init_data_interface(struct nand_chip *chip)
{
 int modes, mode, ret;

 if (!nand_has_setup_data_iface(chip))
  return 0;






 if (chip->parameters.onfi) {
  modes = chip->parameters.onfi->async_timing_mode;
 } else {
  if (!chip->onfi_timing_mode_default)
   return 0;

  modes = GENMASK(chip->onfi_timing_mode_default, 0);
 }

 for (mode = fls(modes) - 1; mode >= 0; mode--) {
  ret = onfi_fill_data_interface(chip, NAND_SDR_IFACE, mode);
  if (ret)
   continue;





  ret = chip->controller->ops->setup_data_interface(chip,
       NAND_DATA_IFACE_CHECK_ONLY,
       &chip->data_interface);
  if (!ret) {
   chip->onfi_timing_mode_default = mode;
   break;
  }
 }

 return 0;
}
