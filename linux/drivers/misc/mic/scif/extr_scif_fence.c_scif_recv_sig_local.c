
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__* payload; int uop; } ;
struct scif_endpt {int remote_dev; scalar_t__ remote_ep; } ;
struct scif_dev {int dummy; } ;


 int SCIF_SIG_ACK ;
 int SCIF_SIG_NACK ;
 int SCIF_WINDOW_SELF ;
 int scif_nodeqp_send (int ,struct scifmsg*) ;
 int scif_prog_signal (struct scif_endpt*,scalar_t__,scalar_t__,int ) ;

void scif_recv_sig_local(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];
 int err;

 err = scif_prog_signal(ep, msg->payload[1], msg->payload[2],
          SCIF_WINDOW_SELF);
 if (err)
  msg->uop = SCIF_SIG_NACK;
 else
  msg->uop = SCIF_SIG_ACK;
 msg->payload[0] = ep->remote_ep;
 scif_nodeqp_send(ep->remote_dev, msg);
}
