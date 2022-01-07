
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; struct scif_qp* rb_base; } ;
struct scif_qp {int local_qp; TYPE_1__ inbound_q; int local_buf; } ;
struct scif_dev {struct scif_qp* qpairs; } ;


 int kfree (struct scif_qp*) ;
 int scif_unmap_single (int ,struct scif_dev*,int) ;

void scif_free_qp(struct scif_dev *scifdev)
{
 struct scif_qp *qp = scifdev->qpairs;

 if (!qp)
  return;
 scif_unmap_single(qp->local_buf, scifdev, qp->inbound_q.size);
 kfree(qp->inbound_q.rb_base);
 scif_unmap_single(qp->local_qp, scifdev, sizeof(struct scif_qp));
 kfree(scifdev->qpairs);
 scifdev->qpairs = ((void*)0);
}
