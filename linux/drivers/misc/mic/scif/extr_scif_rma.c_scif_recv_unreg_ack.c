
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {scalar_t__* payload; } ;
struct scif_window {int unregwq; int unreg_state; scalar_t__ ep; } ;
struct TYPE_2__ {int rma_lock; } ;
struct scif_endpt {TYPE_1__ rma_info; } ;
struct scif_dev {int dummy; } ;


 int OP_COMPLETED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

void scif_recv_unreg_ack(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_window *window =
  (struct scif_window *)msg->payload[1];
 struct scif_endpt *ep = (struct scif_endpt *)window->ep;

 mutex_lock(&ep->rma_info.rma_lock);
 window->unreg_state = OP_COMPLETED;
 wake_up(&window->unregwq);
 mutex_unlock(&ep->rma_info.rma_lock);
}
