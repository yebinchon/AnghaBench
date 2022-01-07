
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct i40e_vsi {int base_vector; int num_queue_pairs; int num_q_vectors; TYPE_3__** xdp_rings; TYPE_2__** rx_rings; TYPE_1__** tx_rings; struct i40e_pf* back; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; TYPE_5__* pdev; TYPE_4__* msix_entries; struct i40e_hw hw; } ;
struct TYPE_10__ {int irq; } ;
struct TYPE_9__ {int vector; } ;
struct TYPE_8__ {int reg_idx; } ;
struct TYPE_7__ {int reg_idx; } ;
struct TYPE_6__ {int reg_idx; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_PFINT_DYN_CTL0 ;
 int I40E_PFINT_DYN_CTLN (int) ;
 int I40E_PFINT_ICR0_ENA ;
 int I40E_QINT_RQCTL (int ) ;
 int I40E_QINT_RQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_TQCTL (int ) ;
 int I40E_QINT_TQCTL_CAUSE_ENA_MASK ;
 int i40e_enabled_xdp_vsi (struct i40e_vsi*) ;
 int i40e_flush (struct i40e_hw*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int synchronize_irq (int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void i40e_vsi_disable_irq(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 int base = vsi->base_vector;
 int i;


 for (i = 0; i < vsi->num_queue_pairs; i++) {
  u32 val;

  val = rd32(hw, I40E_QINT_TQCTL(vsi->tx_rings[i]->reg_idx));
  val &= ~I40E_QINT_TQCTL_CAUSE_ENA_MASK;
  wr32(hw, I40E_QINT_TQCTL(vsi->tx_rings[i]->reg_idx), val);

  val = rd32(hw, I40E_QINT_RQCTL(vsi->rx_rings[i]->reg_idx));
  val &= ~I40E_QINT_RQCTL_CAUSE_ENA_MASK;
  wr32(hw, I40E_QINT_RQCTL(vsi->rx_rings[i]->reg_idx), val);

  if (!i40e_enabled_xdp_vsi(vsi))
   continue;
  wr32(hw, I40E_QINT_TQCTL(vsi->xdp_rings[i]->reg_idx), 0);
 }


 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  for (i = vsi->base_vector;
       i < (vsi->num_q_vectors + vsi->base_vector); i++)
   wr32(hw, I40E_PFINT_DYN_CTLN(i - 1), 0);

  i40e_flush(hw);
  for (i = 0; i < vsi->num_q_vectors; i++)
   synchronize_irq(pf->msix_entries[i + base].vector);
 } else {

  wr32(hw, I40E_PFINT_ICR0_ENA, 0);
  wr32(hw, I40E_PFINT_DYN_CTL0, 0);
  i40e_flush(hw);
  synchronize_irq(pf->pdev->irq);
 }
}
