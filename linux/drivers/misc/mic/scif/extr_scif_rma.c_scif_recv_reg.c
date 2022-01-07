
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {scalar_t__ uop; scalar_t__* payload; } ;
struct scif_window {int dummy; } ;
struct TYPE_2__ {int rma_lock; int remote_reg_list; } ;
struct scif_endpt {scalar_t__ state; int remote_dev; TYPE_1__ rma_info; int lock; } ;
struct scif_dev {int dummy; } ;


 scalar_t__ SCIFEP_CONNECTED ;
 scalar_t__ SCIF_REGISTER_ACK ;
 scalar_t__ SCIF_REGISTER_NACK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scif_destroy_remote_lookup (int ,struct scif_window*) ;
 int scif_destroy_remote_window (struct scif_window*) ;
 int scif_fixup_aper_base (int ,struct scif_window*) ;
 int scif_insert_window (struct scif_window*,int *) ;
 int scif_nodeqp_send (int ,struct scifmsg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void scif_recv_reg(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];
 struct scif_window *window =
  (struct scif_window *)msg->payload[1];

 mutex_lock(&ep->rma_info.rma_lock);
 spin_lock(&ep->lock);
 if (ep->state == SCIFEP_CONNECTED) {
  msg->uop = SCIF_REGISTER_ACK;
  scif_nodeqp_send(ep->remote_dev, msg);
  scif_fixup_aper_base(ep->remote_dev, window);

  scif_insert_window(window, &ep->rma_info.remote_reg_list);
 } else {
  msg->uop = SCIF_REGISTER_NACK;
  scif_nodeqp_send(ep->remote_dev, msg);
 }
 spin_unlock(&ep->lock);
 mutex_unlock(&ep->rma_info.rma_lock);

 scif_destroy_remote_lookup(ep->remote_dev, window);




 if (msg->uop == SCIF_REGISTER_NACK)
  scif_destroy_remote_window(window);
}
