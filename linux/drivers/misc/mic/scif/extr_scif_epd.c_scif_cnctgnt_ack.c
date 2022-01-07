
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {scalar_t__* payload; } ;
struct scif_endpt {int lock; int conwq; int list; int state; } ;
struct scif_dev {int dummy; } ;
struct TYPE_2__ {int connlock; int connected; } ;


 int SCIFEP_CONNECTED ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ scif_info ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void scif_cnctgnt_ack(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];

 mutex_lock(&scif_info.connlock);
 spin_lock(&ep->lock);

 ep->state = SCIFEP_CONNECTED;
 list_add_tail(&ep->list, &scif_info.connected);
 wake_up(&ep->conwq);
 spin_unlock(&ep->lock);
 mutex_unlock(&scif_info.connlock);
}
