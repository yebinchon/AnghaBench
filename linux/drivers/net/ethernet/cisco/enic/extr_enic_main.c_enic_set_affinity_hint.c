
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct enic {int intr_count; int wq_count; TYPE_2__* msix; int netdev; TYPE_1__* msix_entry; } ;
struct TYPE_4__ {int affinity_mask; } ;
struct TYPE_3__ {int vector; } ;


 scalar_t__ cpumask_available (int ) ;
 scalar_t__ cpumask_empty (int ) ;
 scalar_t__ enic_is_err_intr (struct enic*,int) ;
 scalar_t__ enic_is_notify_intr (struct enic*,int) ;
 int enic_msix_wq_intr (struct enic*,int) ;
 int irq_set_affinity_hint (int ,int ) ;
 int netdev_warn (int ,char*,int) ;
 int netif_set_xps_queue (int ,int ,int) ;

__attribute__((used)) static void enic_set_affinity_hint(struct enic *enic)
{
 int i;
 int err;

 for (i = 0; i < enic->intr_count; i++) {
  if (enic_is_err_intr(enic, i) ||
      enic_is_notify_intr(enic, i) ||
      !cpumask_available(enic->msix[i].affinity_mask) ||
      cpumask_empty(enic->msix[i].affinity_mask))
   continue;
  err = irq_set_affinity_hint(enic->msix_entry[i].vector,
         enic->msix[i].affinity_mask);
  if (err)
   netdev_warn(enic->netdev, "irq_set_affinity_hint failed, err %d\n",
        err);
 }

 for (i = 0; i < enic->wq_count; i++) {
  int wq_intr = enic_msix_wq_intr(enic, i);

  if (cpumask_available(enic->msix[wq_intr].affinity_mask) &&
      !cpumask_empty(enic->msix[wq_intr].affinity_mask))
   netif_set_xps_queue(enic->netdev,
         enic->msix[wq_intr].affinity_mask,
         i);
 }
}
