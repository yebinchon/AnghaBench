
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_hw {TYPE_1__* pdev; } ;
struct alx_priv {int num_vec; struct alx_hw hw; int int_mask; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;


 int ALX_IMR ;
 int ALX_ISR ;
 int alx_mask_msix (struct alx_hw*,int,int) ;
 int alx_post_write (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;

__attribute__((used)) static void alx_irq_enable(struct alx_priv *alx)
{
 struct alx_hw *hw = &alx->hw;
 int i;


 alx_write_mem32(hw, ALX_ISR, 0);
 alx_write_mem32(hw, ALX_IMR, alx->int_mask);
 alx_post_write(hw);

 if (alx->hw.pdev->msix_enabled) {

  for (i = 0; i < alx->num_vec; i++)
   alx_mask_msix(hw, i, 0);
 }
}
