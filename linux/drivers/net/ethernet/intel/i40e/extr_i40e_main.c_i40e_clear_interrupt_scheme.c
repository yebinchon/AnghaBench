
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int num_alloc_vsi; scalar_t__* vsi; int irq_pile; int iwarp_base_vector; } ;


 scalar_t__ I40E_IWARP_IRQ_PILE_ID ;
 scalar_t__ I40E_PILE_VALID_BIT ;
 int i40e_free_misc_vector (struct i40e_pf*) ;
 int i40e_put_lump (int ,int ,scalar_t__) ;
 int i40e_reset_interrupt_capability (struct i40e_pf*) ;
 int i40e_vsi_free_q_vectors (scalar_t__) ;

__attribute__((used)) static void i40e_clear_interrupt_scheme(struct i40e_pf *pf)
{
 int i;

 i40e_free_misc_vector(pf);

 i40e_put_lump(pf->irq_pile, pf->iwarp_base_vector,
        I40E_IWARP_IRQ_PILE_ID);

 i40e_put_lump(pf->irq_pile, 0, I40E_PILE_VALID_BIT-1);
 for (i = 0; i < pf->num_alloc_vsi; i++)
  if (pf->vsi[i])
   i40e_vsi_free_q_vectors(pf->vsi[i]);
 i40e_reset_interrupt_capability(pf);
}
