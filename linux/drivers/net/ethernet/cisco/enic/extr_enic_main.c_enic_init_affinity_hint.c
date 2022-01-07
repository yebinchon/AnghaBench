
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct enic {int intr_count; TYPE_1__* msix; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int affinity_mask; } ;


 int GFP_KERNEL ;
 scalar_t__ cpumask_available (int ) ;
 int cpumask_empty (int ) ;
 int cpumask_local_spread (int,int) ;
 int cpumask_set_cpu (int ,int ) ;
 int dev_to_node (int *) ;
 scalar_t__ enic_is_err_intr (struct enic*,int) ;
 scalar_t__ enic_is_notify_intr (struct enic*,int) ;
 scalar_t__ zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static void enic_init_affinity_hint(struct enic *enic)
{
 int numa_node = dev_to_node(&enic->pdev->dev);
 int i;

 for (i = 0; i < enic->intr_count; i++) {
  if (enic_is_err_intr(enic, i) || enic_is_notify_intr(enic, i) ||
      (cpumask_available(enic->msix[i].affinity_mask) &&
       !cpumask_empty(enic->msix[i].affinity_mask)))
   continue;
  if (zalloc_cpumask_var(&enic->msix[i].affinity_mask,
           GFP_KERNEL))
   cpumask_set_cpu(cpumask_local_spread(i, numa_node),
     enic->msix[i].affinity_mask);
 }
}
