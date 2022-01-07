
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct scif_qp* rb_base; } ;
struct scif_qp {TYPE_2__ inbound_q; } ;
struct TYPE_3__ {struct scif_qp* qp; } ;
struct scif_endpt {int lock; TYPE_1__ qp_info; } ;


 int kfree (struct scif_qp*) ;
 int scif_cleanup_ep_qp (struct scif_endpt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void scif_teardown_ep(void *endpt)
{
 struct scif_endpt *ep = endpt;
 struct scif_qp *qp = ep->qp_info.qp;

 if (qp) {
  spin_lock(&ep->lock);
  scif_cleanup_ep_qp(ep);
  spin_unlock(&ep->lock);
  kfree(qp->inbound_q.rb_base);
  kfree(qp);
 }
}
