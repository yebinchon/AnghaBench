
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {scalar_t__ uop; scalar_t__* payload; } ;
struct scif_fence_info {int comp; int state; } ;
struct TYPE_2__ {int rma_lock; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;
struct scif_dev {int dummy; } ;


 int OP_COMPLETED ;
 int OP_FAILED ;
 scalar_t__ SCIF_WAIT_ACK ;
 int complete (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void scif_recv_wait_resp(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];
 struct scif_fence_info *fence_req =
  (struct scif_fence_info *)msg->payload[1];

 mutex_lock(&ep->rma_info.rma_lock);
 if (msg->uop == SCIF_WAIT_ACK)
  fence_req->state = OP_COMPLETED;
 else
  fence_req->state = OP_FAILED;
 mutex_unlock(&ep->rma_info.rma_lock);
 complete(&fence_req->comp);
}
