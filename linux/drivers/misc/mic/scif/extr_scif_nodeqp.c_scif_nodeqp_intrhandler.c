
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__ uop; } ;
struct scif_qp {int inbound_q; } ;
struct scif_dev {int dummy; } ;
typedef int msg ;


 scalar_t__ SCIF_EXIT_ACK ;
 int scif_nodeqp_msg_handler (struct scif_dev*,struct scif_qp*,struct scifmsg*) ;
 int scif_rb_get_next (int *,struct scifmsg*,int) ;
 int scif_rb_update_read_ptr (int *) ;

void scif_nodeqp_intrhandler(struct scif_dev *scifdev, struct scif_qp *qp)
{
 struct scifmsg msg;
 int read_size;

 do {
  read_size = scif_rb_get_next(&qp->inbound_q, &msg, sizeof(msg));
  if (!read_size)
   break;
  scif_nodeqp_msg_handler(scifdev, qp, &msg);




  if (SCIF_EXIT_ACK == msg.uop)
   break;
  scif_rb_update_read_ptr(&qp->inbound_q);
 } while (1);
}
