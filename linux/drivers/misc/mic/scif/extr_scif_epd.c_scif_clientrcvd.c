
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__* payload; } ;
struct scif_endpt {scalar_t__ state; int lock; int sendwq; } ;
struct scif_dev {int dummy; } ;


 scalar_t__ SCIFEP_CONNECTED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

void scif_clientrcvd(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];

 spin_lock(&ep->lock);
 if (SCIFEP_CONNECTED == ep->state)
  wake_up_interruptible(&ep->sendwq);
 spin_unlock(&ep->lock);
}
