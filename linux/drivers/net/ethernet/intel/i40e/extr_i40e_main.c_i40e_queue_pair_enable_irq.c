
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {struct i40e_pf* back; struct i40e_ring** rx_rings; } ;
struct i40e_ring {TYPE_1__* q_vector; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; struct i40e_hw hw; } ;
struct TYPE_2__ {int v_idx; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int i40e_flush (struct i40e_hw*) ;
 int i40e_irq_dynamic_enable (struct i40e_vsi*,int ) ;
 int i40e_irq_dynamic_enable_icr0 (struct i40e_pf*) ;

__attribute__((used)) static void i40e_queue_pair_enable_irq(struct i40e_vsi *vsi, int queue_pair)
{
 struct i40e_ring *rxr = vsi->rx_rings[queue_pair];
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;


 if (pf->flags & I40E_FLAG_MSIX_ENABLED)
  i40e_irq_dynamic_enable(vsi, rxr->q_vector->v_idx);
 else
  i40e_irq_dynamic_enable_icr0(pf);

 i40e_flush(hw);
}
