
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {int dummy; } ;
struct scif_qp {int inbound_q; int recv_lock; } ;
struct scif_loopb_msg {int list; int msg; } ;
struct scif_dev {int dummy; } ;
struct TYPE_2__ {int loopb_work; int loopb_wq; int loopb_recv_q; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct scif_loopb_msg*) ;
 struct scif_loopb_msg* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 TYPE_1__ scif_info ;
 int scif_rb_get_next (int *,int *,int) ;
 int scif_rb_update_read_ptr (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
scif_loopb_msg_handler(struct scif_dev *scifdev, struct scif_qp *qp)
{
 int read_size;
 struct scif_loopb_msg *msg;

 do {
  msg = kmalloc(sizeof(*msg), GFP_KERNEL);
  if (!msg)
   return -ENOMEM;
  read_size = scif_rb_get_next(&qp->inbound_q, &msg->msg,
          sizeof(struct scifmsg));
  if (read_size != sizeof(struct scifmsg)) {
   kfree(msg);
   scif_rb_update_read_ptr(&qp->inbound_q);
   break;
  }
  spin_lock(&qp->recv_lock);
  list_add_tail(&msg->list, &scif_info.loopb_recv_q);
  spin_unlock(&qp->recv_lock);
  queue_work(scif_info.loopb_wq, &scif_info.loopb_work);
  scif_rb_update_read_ptr(&qp->inbound_q);
 } while (read_size == sizeof(struct scifmsg));
 return read_size;
}
