
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current_read_offset; scalar_t__ current_write_offset; } ;
struct TYPE_3__ {scalar_t__ rb_base; } ;
struct scif_qp {TYPE_2__ inbound_q; scalar_t__ local_write; int * remote_qp; TYPE_1__ outbound_q; } ;
struct scif_dev {struct scif_qp* qpairs; } ;


 int scif_free_qp (struct scif_dev*) ;
 int scif_iounmap (void*,int,struct scif_dev*) ;
 scalar_t__ scifdev_is_p2p (struct scif_dev*) ;

__attribute__((used)) static void scif_cleanup_qp(struct scif_dev *dev)
{
 struct scif_qp *qp = &dev->qpairs[0];

 if (!qp)
  return;
 scif_iounmap((void *)qp->remote_qp, sizeof(struct scif_qp), dev);
 scif_iounmap((void *)qp->outbound_q.rb_base,
       sizeof(struct scif_qp), dev);
 qp->remote_qp = ((void*)0);
 qp->local_write = 0;
 qp->inbound_q.current_write_offset = 0;
 qp->inbound_q.current_read_offset = 0;
 if (scifdev_is_p2p(dev))
  scif_free_qp(dev);
}
