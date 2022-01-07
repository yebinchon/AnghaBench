
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {int * payload; int uop; int src; } ;
struct scif_qp {int inbound_q; } ;
struct TYPE_2__ {struct scif_qp* qp; } ;
struct scif_endpt {scalar_t__ state; int lock; int recvwq; int remote_dev; int remote_ep; int port; TYPE_1__ qp_info; } ;
typedef scalar_t__ scif_epd_t ;


 int ECONNRESET ;
 int ENOTCONN ;
 scalar_t__ SCIFEP_CONNECTED ;
 scalar_t__ SCIFEP_DISCONNECTED ;
 int SCIF_CLIENT_RCVD ;
 int SCIF_ENDPT_QP_SIZE ;
 int SCIF_RECV_BLOCK ;
 int _scif_nodeqp_send (int ,struct scifmsg*) ;
 int might_sleep () ;
 int min (int,int) ;
 int scif_rb_count (int *,int) ;
 int scif_rb_get_next (int *,void*,int) ;
 int scif_rb_update_read_ptr (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int _scif_recv(scif_epd_t epd, void *msg, int len, int flags)
{
 int read_size;
 struct scif_endpt *ep = (struct scif_endpt *)epd;
 struct scifmsg notif_msg;
 int curr_recv_len = 0, remaining_len = len, read_count;
 int ret = 0;
 struct scif_qp *qp = ep->qp_info.qp;

 if (flags & SCIF_RECV_BLOCK)
  might_sleep();
 spin_lock(&ep->lock);
 while (remaining_len && (SCIFEP_CONNECTED == ep->state ||
     SCIFEP_DISCONNECTED == ep->state)) {
  read_count = scif_rb_count(&qp->inbound_q, remaining_len);
  if (read_count) {





   curr_recv_len = min(remaining_len, read_count);
   read_size = scif_rb_get_next(&qp->inbound_q,
           msg, curr_recv_len);
   if (ep->state == SCIFEP_CONNECTED) {






    scif_rb_update_read_ptr(&qp->inbound_q);





    notif_msg.src = ep->port;
    notif_msg.uop = SCIF_CLIENT_RCVD;
    notif_msg.payload[0] = ep->remote_ep;
    ret = _scif_nodeqp_send(ep->remote_dev,
       &notif_msg);
    if (ret)
     break;
   }
   remaining_len -= curr_recv_len;
   msg = msg + curr_recv_len;
   continue;
  }




  if (ep->state == SCIFEP_DISCONNECTED)
   break;




  if (!(flags & SCIF_RECV_BLOCK))
   break;
  curr_recv_len = min(remaining_len, SCIF_ENDPT_QP_SIZE - 1);
  spin_unlock(&ep->lock);




  ret =
  wait_event_interruptible(ep->recvwq,
      SCIFEP_CONNECTED != ep->state ||
      scif_rb_count(&qp->inbound_q,
             curr_recv_len)
      >= curr_recv_len);
  spin_lock(&ep->lock);
  if (ret)
   break;
 }
 if (len - remaining_len)
  ret = len - remaining_len;
 else if (!ret && ep->state != SCIFEP_CONNECTED)
  ret = ep->state == SCIFEP_DISCONNECTED ?
   -ECONNRESET : -ENOTCONN;
 spin_unlock(&ep->lock);
 return ret;
}
