
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vnic_rq {int index; } ;
struct vnic_cq {scalar_t__ tobe_rx_coal_timeval; scalar_t__ cur_rx_coal_timeval; } ;
struct enic {int * intr; struct vnic_cq* cq; } ;


 size_t enic_cq_rq (struct enic*,int ) ;
 unsigned int enic_msix_rq_intr (struct enic*,int ) ;
 int vnic_intr_coalescing_timer_set (int *,scalar_t__) ;

__attribute__((used)) static void enic_set_int_moderation(struct enic *enic, struct vnic_rq *rq)
{
 unsigned int intr = enic_msix_rq_intr(enic, rq->index);
 struct vnic_cq *cq = &enic->cq[enic_cq_rq(enic, rq->index)];
 u32 timer = cq->tobe_rx_coal_timeval;

 if (cq->tobe_rx_coal_timeval != cq->cur_rx_coal_timeval) {
  vnic_intr_coalescing_timer_set(&enic->intr[intr], timer);
  cq->cur_rx_coal_timeval = cq->tobe_rx_coal_timeval;
 }
}
