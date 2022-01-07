
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_qp {int local_write; int local_read; int inbound_q; int outbound_q; int recv_lock; int send_lock; int magic; } ;
struct scif_dev {int node; struct scif_qp* qpairs; } ;
struct TYPE_2__ {int nodeid; int loopb_wq; struct scif_dev* loopb_dev; int loopb_work; int loopb_wqname; int loopb_recv_q; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SCIFEP_MAGIC ;
 int SCIF_NODE_QP_SIZE ;
 int alloc_ordered_workqueue (int ,int ) ;
 int destroy_workqueue (int ) ;
 int get_count_order (int) ;
 int kfree (struct scif_qp*) ;
 void* kzalloc (int,int ) ;
 int scif_destroy_intr_wq (struct scif_dev*) ;
 TYPE_1__ scif_info ;
 int scif_loopb_wq_handler ;
 int scif_peer_register_device (struct scif_dev*) ;
 int scif_rb_init (int *,int *,int *,void*,int ) ;
 int scif_setup_intr_wq (struct scif_dev*) ;
 int snprintf (int ,int,char*,int) ;
 int spin_lock_init (int *) ;

int scif_setup_loopback_qp(struct scif_dev *scifdev)
{
 int err = 0;
 void *local_q;
 struct scif_qp *qp;

 err = scif_setup_intr_wq(scifdev);
 if (err)
  goto exit;
 INIT_LIST_HEAD(&scif_info.loopb_recv_q);
 snprintf(scif_info.loopb_wqname, sizeof(scif_info.loopb_wqname),
   "SCIF LOOPB %d", scifdev->node);
 scif_info.loopb_wq =
  alloc_ordered_workqueue(scif_info.loopb_wqname, 0);
 if (!scif_info.loopb_wq) {
  err = -ENOMEM;
  goto destroy_intr;
 }
 INIT_WORK(&scif_info.loopb_work, scif_loopb_wq_handler);

 scifdev->qpairs = kzalloc(sizeof(*scifdev->qpairs), GFP_KERNEL);
 if (!scifdev->qpairs) {
  err = -ENOMEM;
  goto destroy_loopb_wq;
 }

 qp = scifdev->qpairs;
 qp->magic = SCIFEP_MAGIC;
 spin_lock_init(&qp->send_lock);
 spin_lock_init(&qp->recv_lock);

 local_q = kzalloc(SCIF_NODE_QP_SIZE, GFP_KERNEL);
 if (!local_q) {
  err = -ENOMEM;
  goto free_qpairs;
 }





 scif_rb_init(&qp->outbound_q,
       &qp->local_read,
       &qp->local_write,
       local_q, get_count_order(SCIF_NODE_QP_SIZE));

 scif_rb_init(&qp->inbound_q,
       &qp->local_read,
       &qp->local_write,
       local_q, get_count_order(SCIF_NODE_QP_SIZE));
 scif_info.nodeid = scifdev->node;

 scif_peer_register_device(scifdev);

 scif_info.loopb_dev = scifdev;
 return err;
free_qpairs:
 kfree(scifdev->qpairs);
destroy_loopb_wq:
 destroy_workqueue(scif_info.loopb_wq);
destroy_intr:
 scif_destroy_intr_wq(scifdev);
exit:
 return err;
}
