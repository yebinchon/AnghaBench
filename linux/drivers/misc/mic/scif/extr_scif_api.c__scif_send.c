
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {int * payload; int uop; int src; } ;
struct scif_qp {int outbound_q; } ;
struct TYPE_2__ {struct scif_qp* qp; } ;
struct scif_endpt {scalar_t__ state; int lock; int sendwq; int remote_dev; int remote_ep; int port; TYPE_1__ qp_info; } ;
typedef scalar_t__ scif_epd_t ;


 int ECONNRESET ;
 int ENOTCONN ;
 scalar_t__ SCIFEP_CONNECTED ;
 scalar_t__ SCIFEP_DISCONNECTED ;
 int SCIF_CLIENT_SENT ;
 int SCIF_ENDPT_QP_SIZE ;
 int SCIF_SEND_BLOCK ;
 int _scif_nodeqp_send (int ,struct scifmsg*) ;
 int might_sleep () ;
 int min (int,int) ;
 int scif_rb_commit (int *) ;
 int scif_rb_space (int *) ;
 int scif_rb_write (int *,void*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int _scif_send(scif_epd_t epd, void *msg, int len, int flags)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;
 struct scifmsg notif_msg;
 int curr_xfer_len = 0, sent_len = 0, write_count;
 int ret = 0;
 struct scif_qp *qp = ep->qp_info.qp;

 if (flags & SCIF_SEND_BLOCK)
  might_sleep();

 spin_lock(&ep->lock);
 while (sent_len != len && SCIFEP_CONNECTED == ep->state) {
  write_count = scif_rb_space(&qp->outbound_q);
  if (write_count) {

   curr_xfer_len = min(len - sent_len, write_count);
   ret = scif_rb_write(&qp->outbound_q, msg,
         curr_xfer_len);
   if (ret < 0)
    break;

   scif_rb_commit(&qp->outbound_q);




   notif_msg.src = ep->port;
   notif_msg.uop = SCIF_CLIENT_SENT;
   notif_msg.payload[0] = ep->remote_ep;
   ret = _scif_nodeqp_send(ep->remote_dev, &notif_msg);
   if (ret)
    break;
   sent_len += curr_xfer_len;
   msg = msg + curr_xfer_len;
   continue;
  }
  curr_xfer_len = min(len - sent_len, SCIF_ENDPT_QP_SIZE - 1);

  if (!(flags & SCIF_SEND_BLOCK))
   break;

  spin_unlock(&ep->lock);

  ret =
  wait_event_interruptible(ep->sendwq,
      (SCIFEP_CONNECTED != ep->state) ||
      (scif_rb_space(&qp->outbound_q) >=
      curr_xfer_len));
  spin_lock(&ep->lock);
  if (ret)
   break;
 }
 if (sent_len)
  ret = sent_len;
 else if (!ret && SCIFEP_CONNECTED != ep->state)
  ret = SCIFEP_DISCONNECTED == ep->state ?
   -ECONNRESET : -ENOTCONN;
 spin_unlock(&ep->lock);
 return ret;
}
