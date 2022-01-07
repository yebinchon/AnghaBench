
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {int base_vector; struct i40e_pf* back; struct i40e_ring** rx_rings; } ;
struct i40e_ring {TYPE_1__* q_vector; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; TYPE_3__* pdev; TYPE_2__* msix_entries; struct i40e_hw hw; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {int v_idx; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTLN (int) ;
 int I40E_PFINT_ICR0_ENA ;
 int i40e_flush (struct i40e_hw*) ;
 int synchronize_irq (int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_queue_pair_disable_irq(struct i40e_vsi *vsi, int queue_pair)
{
 struct i40e_ring *rxr = vsi->rx_rings[queue_pair];
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;







 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  u32 intpf = vsi->base_vector + rxr->q_vector->v_idx;

  wr32(hw, I40E_PFINT_DYN_CTLN(intpf - 1), 0);
  i40e_flush(hw);
  synchronize_irq(pf->msix_entries[intpf].vector);
 } else {

  wr32(hw, I40E_PFINT_ICR0_ENA, 0);
  wr32(hw, I40E_PFINT_DYN_CTL0, 0);
  i40e_flush(hw);
  synchronize_irq(pf->pdev->irq);
 }
}
