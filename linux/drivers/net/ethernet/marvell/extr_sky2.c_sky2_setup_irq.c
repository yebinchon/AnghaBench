
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {int flags; int napi; struct pci_dev* pdev; } ;
struct pci_dev {int irq; int dev; } ;


 int B0_IMSK ;
 int IRQF_SHARED ;
 int SKY2_HW_IRQ_SETUP ;
 int SKY2_HW_USE_MSI ;
 int Y2_IS_BASE ;
 int dev_err (int *,char*,int ) ;
 int napi_enable (int *) ;
 int request_irq (int ,int ,int ,char const*,struct sky2_hw*) ;
 int sky2_intr ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static int sky2_setup_irq(struct sky2_hw *hw, const char *name)
{
 struct pci_dev *pdev = hw->pdev;
 int err;

 err = request_irq(pdev->irq, sky2_intr,
     (hw->flags & SKY2_HW_USE_MSI) ? 0 : IRQF_SHARED,
     name, hw);
 if (err)
  dev_err(&pdev->dev, "cannot assign irq %d\n", pdev->irq);
 else {
  hw->flags |= SKY2_HW_IRQ_SETUP;

  napi_enable(&hw->napi);
  sky2_write32(hw, B0_IMSK, Y2_IS_BASE);
  sky2_read32(hw, B0_IMSK);
 }

 return err;
}
