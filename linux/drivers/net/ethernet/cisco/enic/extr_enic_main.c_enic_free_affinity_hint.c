
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enic {int intr_count; TYPE_1__* msix; } ;
struct TYPE_2__ {int affinity_mask; } ;


 scalar_t__ enic_is_err_intr (struct enic*,int) ;
 scalar_t__ enic_is_notify_intr (struct enic*,int) ;
 int free_cpumask_var (int ) ;

__attribute__((used)) static void enic_free_affinity_hint(struct enic *enic)
{
 int i;

 for (i = 0; i < enic->intr_count; i++) {
  if (enic_is_err_intr(enic, i) || enic_is_notify_intr(enic, i))
   continue;
  free_cpumask_var(enic->msix[i].affinity_mask);
 }
}
