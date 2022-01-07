
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t node; } ;
struct TYPE_3__ {int port; } ;
struct scifmsg {TYPE_2__ src; int uop; TYPE_1__ dst; } ;
struct scif_endpt {scalar_t__ backlog; scalar_t__ conreqcnt; int lock; int conwq; int conlist; } ;
struct scif_dev {int dummy; } ;
struct scif_conreq {int list; struct scifmsg msg; } ;


 int GFP_KERNEL ;
 int SCIF_CNCT_REJ ;
 int kfree (struct scif_conreq*) ;
 struct scif_conreq* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int * scif_dev ;
 struct scif_endpt* scif_find_listen_ep (int ) ;
 int scif_nodeqp_send (int *,struct scifmsg*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

void scif_cnctreq(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = ((void*)0);
 struct scif_conreq *conreq;

 conreq = kmalloc(sizeof(*conreq), GFP_KERNEL);
 if (!conreq)

  goto conreq_sendrej;

 ep = scif_find_listen_ep(msg->dst.port);
 if (!ep)

  goto conreq_sendrej_free;
 else
  spin_lock(&ep->lock);

 if (ep->backlog <= ep->conreqcnt) {

  spin_unlock(&ep->lock);
  goto conreq_sendrej_free;
 }

 conreq->msg = *msg;
 list_add_tail(&conreq->list, &ep->conlist);
 ep->conreqcnt++;
 wake_up_interruptible(&ep->conwq);
 spin_unlock(&ep->lock);
 return;

conreq_sendrej_free:
 kfree(conreq);
conreq_sendrej:
 msg->uop = SCIF_CNCT_REJ;
 scif_nodeqp_send(&scif_dev[msg->src.node], msg);
}
