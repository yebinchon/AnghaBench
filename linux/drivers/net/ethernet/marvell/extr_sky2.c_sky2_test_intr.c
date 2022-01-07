
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {int msi_wait; int flags; } ;
typedef int irqreturn_t ;


 int B0_CTST ;
 int B0_Y2_SP_ICR ;
 int B0_Y2_SP_ISRC2 ;
 int CS_CL_SW_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SKY2_HW_USE_MSI ;
 int Y2_IS_IRQ_SW ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t sky2_test_intr(int irq, void *dev_id)
{
 struct sky2_hw *hw = dev_id;
 u32 status = sky2_read32(hw, B0_Y2_SP_ISRC2);

 if (status == 0)
  return IRQ_NONE;

 if (status & Y2_IS_IRQ_SW) {
  hw->flags |= SKY2_HW_USE_MSI;
  wake_up(&hw->msi_wait);
  sky2_write8(hw, B0_CTST, CS_CL_SW_IRQ);
 }
 sky2_write32(hw, B0_Y2_SP_ICR, 2);

 return IRQ_HANDLED;
}
