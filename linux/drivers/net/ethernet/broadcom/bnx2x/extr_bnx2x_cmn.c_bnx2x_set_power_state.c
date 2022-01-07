
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct bnx2x {TYPE_1__* pdev; int wol; } ;
typedef int pci_power_t ;
struct TYPE_3__ {int dev; scalar_t__ pm_cap; int enable_cnt; } ;


 int BNX2X_DEV_INFO (char*) ;
 int CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int EINVAL ;


 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_PME_ENABLE ;
 int PCI_PM_CTRL_PME_STATUS ;
 int PCI_PM_CTRL_STATE_MASK ;
 int atomic_read (int *) ;
 int dev_err (int *,char*,int) ;
 int msleep (int) ;
 int pci_read_config_word (TYPE_1__*,scalar_t__,int*) ;
 int pci_write_config_word (TYPE_1__*,scalar_t__,int) ;

int bnx2x_set_power_state(struct bnx2x *bp, pci_power_t state)
{
 u16 pmcsr;


 if (!bp->pdev->pm_cap) {
  BNX2X_DEV_INFO("No power capability. Breaking.\n");
  return 0;
 }

 pci_read_config_word(bp->pdev, bp->pdev->pm_cap + PCI_PM_CTRL, &pmcsr);

 switch (state) {
 case 129:
  pci_write_config_word(bp->pdev, bp->pdev->pm_cap + PCI_PM_CTRL,
          ((pmcsr & ~PCI_PM_CTRL_STATE_MASK) |
           PCI_PM_CTRL_PME_STATUS));

  if (pmcsr & PCI_PM_CTRL_STATE_MASK)

   msleep(20);
  break;

 case 128:


  if (atomic_read(&bp->pdev->enable_cnt) != 1)
   return 0;

  if (CHIP_REV_IS_SLOW(bp))
   return 0;

  pmcsr &= ~PCI_PM_CTRL_STATE_MASK;
  pmcsr |= 3;

  if (bp->wol)
   pmcsr |= PCI_PM_CTRL_PME_ENABLE;

  pci_write_config_word(bp->pdev, bp->pdev->pm_cap + PCI_PM_CTRL,
          pmcsr);




  break;

 default:
  dev_err(&bp->pdev->dev, "Can't support state = %d\n", state);
  return -EINVAL;
 }
 return 0;
}
