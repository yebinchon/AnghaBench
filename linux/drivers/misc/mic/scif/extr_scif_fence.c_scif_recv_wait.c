
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scifmsg {int uop; scalar_t__* payload; } ;
struct scif_remote_fence_info {int list; int msg; } ;
struct TYPE_3__ {int fence_refcount; } ;
struct scif_endpt {TYPE_1__ rma_info; int remote_dev; scalar_t__ remote_ep; } ;
struct scif_dev {int dummy; } ;
struct TYPE_4__ {int misc_work; int fencelock; int fence; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SCIF_WAIT_NACK ;
 int atomic_inc (int *) ;
 struct scif_remote_fence_info* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct scifmsg*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;
 TYPE_2__ scif_info ;
 int scif_nodeqp_send (int ,struct scifmsg*) ;

void scif_recv_wait(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];
 struct scif_remote_fence_info *fence;






 fence = kmalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence) {
  msg->payload[0] = ep->remote_ep;
  msg->uop = SCIF_WAIT_NACK;
  scif_nodeqp_send(ep->remote_dev, msg);
  return;
 }


 memcpy(&fence->msg, msg, sizeof(struct scifmsg));
 INIT_LIST_HEAD(&fence->list);


 mutex_lock(&scif_info.fencelock);
 atomic_inc(&ep->rma_info.fence_refcount);
 list_add_tail(&fence->list, &scif_info.fence);
 mutex_unlock(&scif_info.fencelock);

 schedule_work(&scif_info.misc_work);
}
