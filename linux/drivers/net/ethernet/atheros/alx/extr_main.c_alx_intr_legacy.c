
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct alx_hw {int dummy; } ;
struct alx_priv {int int_mask; struct alx_hw hw; } ;
typedef int irqreturn_t ;


 int ALX_ISR ;
 int ALX_ISR_DIS ;
 int IRQ_NONE ;
 int alx_intr_handle (struct alx_priv*,int) ;
 int alx_read_mem32 (struct alx_hw*,int ) ;

__attribute__((used)) static irqreturn_t alx_intr_legacy(int irq, void *data)
{
 struct alx_priv *alx = data;
 struct alx_hw *hw = &alx->hw;
 u32 intr;

 intr = alx_read_mem32(hw, ALX_ISR);

 if (intr & ALX_ISR_DIS || !(intr & alx->int_mask))
  return IRQ_NONE;

 return alx_intr_handle(alx, intr);
}
