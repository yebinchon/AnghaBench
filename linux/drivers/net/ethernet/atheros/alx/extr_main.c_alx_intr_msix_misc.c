
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_hw {int dummy; } ;
struct alx_priv {int int_mask; struct alx_hw hw; } ;
typedef int irqreturn_t ;


 int ALX_ISR ;
 int ALX_ISR_ALL_QUEUES ;
 int IRQ_HANDLED ;
 scalar_t__ alx_intr_handle_misc (struct alx_priv*,int) ;
 int alx_mask_msix (struct alx_hw*,int ,int) ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;

__attribute__((used)) static irqreturn_t alx_intr_msix_misc(int irq, void *data)
{
 struct alx_priv *alx = data;
 struct alx_hw *hw = &alx->hw;
 u32 intr;


 alx_mask_msix(hw, 0, 1);


 intr = alx_read_mem32(hw, ALX_ISR);
 intr &= (alx->int_mask & ~ALX_ISR_ALL_QUEUES);

 if (alx_intr_handle_misc(alx, intr))
  return IRQ_HANDLED;


 alx_write_mem32(hw, ALX_ISR, intr);


 alx_mask_msix(hw, 0, 0);

 return IRQ_HANDLED;
}
