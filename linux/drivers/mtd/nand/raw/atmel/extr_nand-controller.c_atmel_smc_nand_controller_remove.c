
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_nand_controller {int dummy; } ;


 int atmel_nand_controller_cleanup (struct atmel_nand_controller*) ;
 int atmel_nand_controller_remove_nands (struct atmel_nand_controller*) ;

__attribute__((used)) static int
atmel_smc_nand_controller_remove(struct atmel_nand_controller *nc)
{
 int ret;

 ret = atmel_nand_controller_remove_nands(nc);
 if (ret)
  return ret;

 atmel_nand_controller_cleanup(nc);

 return 0;
}
