
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct TYPE_4__ {TYPE_1__ ecc; } ;
struct davinci_nand_info {TYPE_2__ chip; } ;


 scalar_t__ NAND_ECC_HW_SYNDROME ;
 int davinci_nand_lock ;
 int ecc4_busy ;
 int nand_release (TYPE_2__*) ;
 struct davinci_nand_info* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int nand_davinci_remove(struct platform_device *pdev)
{
 struct davinci_nand_info *info = platform_get_drvdata(pdev);

 spin_lock_irq(&davinci_nand_lock);
 if (info->chip.ecc.mode == NAND_ECC_HW_SYNDROME)
  ecc4_busy = 0;
 spin_unlock_irq(&davinci_nand_lock);

 nand_release(&info->chip);

 return 0;
}
