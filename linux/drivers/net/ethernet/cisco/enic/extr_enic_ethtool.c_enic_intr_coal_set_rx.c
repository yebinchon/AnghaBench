
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enic {int rq_count; int * intr; } ;


 int enic_msix_rq_intr (struct enic*,int) ;
 int vnic_intr_coalescing_timer_set (int *,int ) ;

__attribute__((used)) static void enic_intr_coal_set_rx(struct enic *enic, u32 timer)
{
 int i;
 int intr;

 for (i = 0; i < enic->rq_count; i++) {
  intr = enic_msix_rq_intr(enic, i);
  vnic_intr_coalescing_timer_set(&enic->intr[intr], timer);
 }
}
