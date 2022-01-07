
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dev; } ;
struct atl1_hw {scalar_t__ hw_addr; struct atl1_adapter* back; } ;
struct atl1_adapter {struct pci_dev* pdev; } ;
typedef scalar_t__ s32 ;


 int MASTER_CTRL_SOFT_RST ;
 scalar_t__ REG_IDLE_STATUS ;
 scalar_t__ REG_MASTER_CTRL ;
 scalar_t__ REG_PHY_ENABLE ;
 int cpu_relax () ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int ioread16 (scalar_t__) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int msleep (int) ;
 scalar_t__ netif_msg_hw (struct atl1_adapter*) ;

__attribute__((used)) static s32 atl1_reset_hw(struct atl1_hw *hw)
{
 struct pci_dev *pdev = hw->back->pdev;
 struct atl1_adapter *adapter = hw->back;
 u32 icr;
 int i;
 iowrite32(MASTER_CTRL_SOFT_RST, hw->hw_addr + REG_MASTER_CTRL);
 ioread32(hw->hw_addr + REG_MASTER_CTRL);

 iowrite16(1, hw->hw_addr + REG_PHY_ENABLE);
 ioread16(hw->hw_addr + REG_PHY_ENABLE);


 msleep(1);


 for (i = 0; i < 10; i++) {
  icr = ioread32(hw->hw_addr + REG_IDLE_STATUS);
  if (!icr)
   break;

  msleep(1);

  cpu_relax();
 }

 if (icr) {
  if (netif_msg_hw(adapter))
   dev_dbg(&pdev->dev, "ICR = 0x%x\n", icr);
  return icr;
 }

 return 0;
}
