
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_var_t ;


 int free_cpumask_var (int ) ;
 int irq_set_affinity_hint (unsigned short,int *) ;

void cxgb4_clear_msix_aff(unsigned short vec, cpumask_var_t aff_mask)
{
 irq_set_affinity_hint(vec, ((void*)0));
 free_cpumask_var(aff_mask);
}
