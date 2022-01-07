
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int num_q_vectors; struct i40e_pf* back; } ;
struct i40e_pf {int flags; int hw; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int i40e_flush (int *) ;
 int i40e_irq_dynamic_enable (struct i40e_vsi*,int) ;
 int i40e_irq_dynamic_enable_icr0 (struct i40e_pf*) ;

__attribute__((used)) static int i40e_vsi_enable_irq(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 int i;

 if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
  for (i = 0; i < vsi->num_q_vectors; i++)
   i40e_irq_dynamic_enable(vsi, i);
 } else {
  i40e_irq_dynamic_enable_icr0(pf);
 }

 i40e_flush(&pf->hw);
 return 0;
}
