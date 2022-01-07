
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__* payload; } ;
struct scif_endpt {int lock; int conwq; int state; } ;
struct scif_dev {int dummy; } ;


 int SCIFEP_CLOSING ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void scif_cnctgnt_nack(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];

 spin_lock(&ep->lock);
 ep->state = SCIFEP_CLOSING;
 wake_up(&ep->conwq);
 spin_unlock(&ep->lock);
}
