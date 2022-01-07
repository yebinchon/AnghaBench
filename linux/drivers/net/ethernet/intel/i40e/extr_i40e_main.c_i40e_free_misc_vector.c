
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {int flags; int state; TYPE_1__* msix_entries; int hw; } ;
struct TYPE_2__ {int vector; } ;


 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_PFINT_ICR0_ENA ;
 int __I40E_MISC_IRQ_REQUESTED ;
 int clear_bit (int ,int ) ;
 int free_irq (int ,struct i40e_pf*) ;
 int i40e_flush (int *) ;
 int synchronize_irq (int ) ;
 int wr32 (int *,int ,int ) ;

__attribute__((used)) static void i40e_free_misc_vector(struct i40e_pf *pf)
{

 wr32(&pf->hw, I40E_PFINT_ICR0_ENA, 0);
 i40e_flush(&pf->hw);

 if (pf->flags & I40E_FLAG_MSIX_ENABLED && pf->msix_entries) {
  synchronize_irq(pf->msix_entries[0].vector);
  free_irq(pf->msix_entries[0].vector, pf);
  clear_bit(__I40E_MISC_IRQ_REQUESTED, pf->state);
 }
}
