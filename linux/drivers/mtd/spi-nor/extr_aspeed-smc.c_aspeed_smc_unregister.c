
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aspeed_smc_controller {struct aspeed_smc_chip** chips; TYPE_1__* info; } ;
struct TYPE_4__ {int mtd; } ;
struct aspeed_smc_chip {TYPE_2__ nor; } ;
struct TYPE_3__ {int nce; } ;


 int mtd_device_unregister (int *) ;

__attribute__((used)) static int aspeed_smc_unregister(struct aspeed_smc_controller *controller)
{
 struct aspeed_smc_chip *chip;
 int n;

 for (n = 0; n < controller->info->nce; n++) {
  chip = controller->chips[n];
  if (chip)
   mtd_device_unregister(&chip->nor.mtd);
 }

 return 0;
}
