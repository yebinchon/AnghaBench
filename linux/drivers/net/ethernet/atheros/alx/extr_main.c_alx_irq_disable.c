
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alx_hw {TYPE_1__* pdev; } ;
struct alx_priv {int num_vec; struct alx_hw hw; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;


 int ALX_IMR ;
 int ALX_ISR ;
 int ALX_ISR_DIS ;
 int alx_mask_msix (struct alx_hw*,int,int) ;
 int alx_post_write (struct alx_hw*) ;
 int alx_write_mem32 (struct alx_hw*,int ,int ) ;
 int pci_irq_vector (TYPE_1__*,int) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void alx_irq_disable(struct alx_priv *alx)
{
 struct alx_hw *hw = &alx->hw;
 int i;

 alx_write_mem32(hw, ALX_ISR, ALX_ISR_DIS);
 alx_write_mem32(hw, ALX_IMR, 0);
 alx_post_write(hw);

 if (alx->hw.pdev->msix_enabled) {
  for (i = 0; i < alx->num_vec; i++) {
   alx_mask_msix(hw, i, 1);
   synchronize_irq(pci_irq_vector(alx->hw.pdev, i));
  }
 } else {
  synchronize_irq(pci_irq_vector(alx->hw.pdev, 0));
 }
}
