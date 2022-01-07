
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__* payload; } ;
struct scif_endpt {scalar_t__ state; int lock; int conwq; } ;
struct scif_dev {int dummy; } ;


 scalar_t__ SCIFEP_BOUND ;
 scalar_t__ SCIFEP_CONNECTING ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void scif_cnctrej(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];

 spin_lock(&ep->lock);
 if (SCIFEP_CONNECTING == ep->state) {
  ep->state = SCIFEP_BOUND;
  wake_up(&ep->conwq);
 }
 spin_unlock(&ep->lock);
}
