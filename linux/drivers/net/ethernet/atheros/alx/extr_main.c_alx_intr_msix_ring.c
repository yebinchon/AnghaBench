
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_napi {int napi; int vec_mask; int vec_idx; TYPE_1__* alx; } ;
struct alx_hw {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct alx_hw hw; } ;


 int ALX_ISR ;
 int IRQ_HANDLED ;
 int alx_mask_msix (struct alx_hw*,int ,int) ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;
 int napi_schedule (int *) ;

__attribute__((used)) static irqreturn_t alx_intr_msix_ring(int irq, void *data)
{
 struct alx_napi *np = data;
 struct alx_hw *hw = &np->alx->hw;


 alx_mask_msix(hw, np->vec_idx, 1);

 alx_write_mem32(hw, ALX_ISR, np->vec_mask);

 napi_schedule(&np->napi);

 return IRQ_HANDLED;
}
