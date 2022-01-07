
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct i40e_vsi {int base_vector; int irqs_ready; int num_q_vectors; struct i40e_pf** q_vectors; struct i40e_pf* back; } ;
struct i40e_hw {int dummy; } ;
struct i40e_pf {int flags; TYPE_2__* pdev; int num_ringpairs; TYPE_1__* msix_entries; struct i40e_hw hw; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_PFINT_LNKLST0 ;
 int I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT ;
 int I40E_PFINT_LNKLSTN (size_t) ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK ;
 int I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT ;
 int I40E_QINT_RQCTL (int) ;
 int I40E_QINT_RQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_RQCTL_INTEVENT_MASK ;
 int I40E_QINT_RQCTL_ITR_INDX_MASK ;
 int I40E_QINT_RQCTL_MSIX0_INDX_MASK ;
 int I40E_QINT_RQCTL_MSIX_INDX_MASK ;
 int I40E_QINT_RQCTL_NEXTQ_INDX_MASK ;
 int I40E_QINT_TQCTL (int) ;
 int I40E_QINT_TQCTL_CAUSE_ENA_MASK ;
 int I40E_QINT_TQCTL_INTEVENT_MASK ;
 int I40E_QINT_TQCTL_ITR_INDX_MASK ;
 int I40E_QINT_TQCTL_MSIX0_INDX_MASK ;
 int I40E_QINT_TQCTL_MSIX_INDX_MASK ;
 int I40E_QINT_TQCTL_NEXTQ_INDX_MASK ;
 int I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT ;
 int I40E_QUEUE_END_OF_LIST ;
 int free_irq (int,struct i40e_pf*) ;
 int irq_set_affinity_hint (int,int *) ;
 int irq_set_affinity_notifier (int,int *) ;
 int rd32 (struct i40e_hw*,int ) ;
 int synchronize_irq (int) ;
 int wr32 (struct i40e_hw*,int ,int) ;

__attribute__((used)) static void i40e_vsi_free_irq(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 struct i40e_hw *hw = &pf->hw;
 int base = vsi->base_vector;
 u32 val, qp;
 int i;

 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  if (!vsi->q_vectors)
   return;

  if (!vsi->irqs_ready)
   return;

  vsi->irqs_ready = 0;
  for (i = 0; i < vsi->num_q_vectors; i++) {
   int irq_num;
   u16 vector;

   vector = i + base;
   irq_num = pf->msix_entries[vector].vector;


   if (!vsi->q_vectors[i] ||
       !vsi->q_vectors[i]->num_ringpairs)
    continue;


   irq_set_affinity_notifier(irq_num, ((void*)0));

   irq_set_affinity_hint(irq_num, ((void*)0));
   synchronize_irq(irq_num);
   free_irq(irq_num, vsi->q_vectors[i]);
   val = rd32(hw, I40E_PFINT_LNKLSTN(vector - 1));
   qp = (val & I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK)
    >> I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT;
   val |= I40E_QUEUE_END_OF_LIST
    << I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT;
   wr32(hw, I40E_PFINT_LNKLSTN(vector - 1), val);

   while (qp != I40E_QUEUE_END_OF_LIST) {
    u32 next;

    val = rd32(hw, I40E_QINT_RQCTL(qp));

    val &= ~(I40E_QINT_RQCTL_MSIX_INDX_MASK |
      I40E_QINT_RQCTL_MSIX0_INDX_MASK |
      I40E_QINT_RQCTL_CAUSE_ENA_MASK |
      I40E_QINT_RQCTL_INTEVENT_MASK);

    val |= (I40E_QINT_RQCTL_ITR_INDX_MASK |
      I40E_QINT_RQCTL_NEXTQ_INDX_MASK);

    wr32(hw, I40E_QINT_RQCTL(qp), val);

    val = rd32(hw, I40E_QINT_TQCTL(qp));

    next = (val & I40E_QINT_TQCTL_NEXTQ_INDX_MASK)
     >> I40E_QINT_TQCTL_NEXTQ_INDX_SHIFT;

    val &= ~(I40E_QINT_TQCTL_MSIX_INDX_MASK |
      I40E_QINT_TQCTL_MSIX0_INDX_MASK |
      I40E_QINT_TQCTL_CAUSE_ENA_MASK |
      I40E_QINT_TQCTL_INTEVENT_MASK);

    val |= (I40E_QINT_TQCTL_ITR_INDX_MASK |
      I40E_QINT_TQCTL_NEXTQ_INDX_MASK);

    wr32(hw, I40E_QINT_TQCTL(qp), val);
    qp = next;
   }
  }
 } else {
  free_irq(pf->pdev->irq, pf);

  val = rd32(hw, I40E_PFINT_LNKLST0);
  qp = (val & I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK)
   >> I40E_PFINT_LNKLSTN_FIRSTQ_INDX_SHIFT;
  val |= I40E_QUEUE_END_OF_LIST
   << I40E_PFINT_LNKLST0_FIRSTQ_INDX_SHIFT;
  wr32(hw, I40E_PFINT_LNKLST0, val);

  val = rd32(hw, I40E_QINT_RQCTL(qp));
  val &= ~(I40E_QINT_RQCTL_MSIX_INDX_MASK |
    I40E_QINT_RQCTL_MSIX0_INDX_MASK |
    I40E_QINT_RQCTL_CAUSE_ENA_MASK |
    I40E_QINT_RQCTL_INTEVENT_MASK);

  val |= (I40E_QINT_RQCTL_ITR_INDX_MASK |
   I40E_QINT_RQCTL_NEXTQ_INDX_MASK);

  wr32(hw, I40E_QINT_RQCTL(qp), val);

  val = rd32(hw, I40E_QINT_TQCTL(qp));

  val &= ~(I40E_QINT_TQCTL_MSIX_INDX_MASK |
    I40E_QINT_TQCTL_MSIX0_INDX_MASK |
    I40E_QINT_TQCTL_CAUSE_ENA_MASK |
    I40E_QINT_TQCTL_INTEVENT_MASK);

  val |= (I40E_QINT_TQCTL_ITR_INDX_MASK |
   I40E_QINT_TQCTL_NEXTQ_INDX_MASK);

  wr32(hw, I40E_QINT_TQCTL(qp), val);
 }
}
