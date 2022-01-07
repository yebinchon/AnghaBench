
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {int flags; int msi_wait; struct pci_dev* pdev; } ;
struct pci_dev {int irq; int dev; } ;


 int B0_CTST ;
 int B0_IMSK ;
 int CS_CL_SW_IRQ ;
 int CS_ST_SW_IRQ ;
 int DRV_NAME ;
 int EOPNOTSUPP ;
 int HZ ;
 int SKY2_HW_USE_MSI ;
 int Y2_IS_IRQ_SW ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*) ;
 int free_irq (int ,struct sky2_hw*) ;
 int init_waitqueue_head (int *) ;
 int request_irq (int ,int ,int ,int ,struct sky2_hw*) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_read8 (struct sky2_hw*,int ) ;
 int sky2_test_intr ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int sky2_test_msi(struct sky2_hw *hw)
{
 struct pci_dev *pdev = hw->pdev;
 int err;

 init_waitqueue_head(&hw->msi_wait);

 err = request_irq(pdev->irq, sky2_test_intr, 0, DRV_NAME, hw);
 if (err) {
  dev_err(&pdev->dev, "cannot assign irq %d\n", pdev->irq);
  return err;
 }

 sky2_write32(hw, B0_IMSK, Y2_IS_IRQ_SW);

 sky2_write8(hw, B0_CTST, CS_ST_SW_IRQ);
 sky2_read8(hw, B0_CTST);

 wait_event_timeout(hw->msi_wait, (hw->flags & SKY2_HW_USE_MSI), HZ/10);

 if (!(hw->flags & SKY2_HW_USE_MSI)) {

  dev_info(&pdev->dev, "No interrupt generated using MSI, "
    "switching to INTx mode.\n");

  err = -EOPNOTSUPP;
  sky2_write8(hw, B0_CTST, CS_CL_SW_IRQ);
 }

 sky2_write32(hw, B0_IMSK, 0);
 sky2_read32(hw, B0_IMSK);

 free_irq(pdev->irq, hw);

 return err;
}
