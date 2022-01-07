
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int port; int node; } ;
struct scifmsg {scalar_t__* payload; TYPE_2__ src; } ;
struct TYPE_6__ {scalar_t__ gnt_pld; } ;
struct TYPE_4__ {int port; int node; } ;
struct scif_endpt {scalar_t__ state; int lock; int conwq; scalar_t__ remote_ep; TYPE_3__ qp_info; TYPE_1__ peer; } ;
struct scif_dev {int dummy; } ;


 scalar_t__ SCIFEP_CONNECTING ;
 scalar_t__ SCIFEP_MAPPING ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void scif_cnctgnt(struct scif_dev *scifdev, struct scifmsg *msg)
{
 struct scif_endpt *ep = (struct scif_endpt *)msg->payload[0];

 spin_lock(&ep->lock);
 if (SCIFEP_CONNECTING == ep->state) {
  ep->peer.node = msg->src.node;
  ep->peer.port = msg->src.port;
  ep->qp_info.gnt_pld = msg->payload[1];
  ep->remote_ep = msg->payload[2];
  ep->state = SCIFEP_MAPPING;

  wake_up(&ep->conwq);
 }
 spin_unlock(&ep->lock);
}
