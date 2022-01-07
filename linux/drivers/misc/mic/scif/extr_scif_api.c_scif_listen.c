
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * qp; } ;
struct scif_endpt {size_t state; int backlog; int list; TYPE_2__ qp_info; int lock; int li_accept; int conwq; int conlist; scalar_t__ acceptcnt; scalar_t__ conreqcnt; } ;
typedef scalar_t__ scif_epd_t ;
struct TYPE_4__ {int this_device; } ;
struct TYPE_6__ {int eplock; int listen; TYPE_1__ mdev; } ;


 int EINVAL ;
 int EISCONN ;
 int INIT_LIST_HEAD (int *) ;
 int dev_dbg (int ,char*,struct scif_endpt*,int ) ;
 int init_waitqueue_head (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * scif_ep_states ;
 TYPE_3__ scif_info ;
 int scif_teardown_ep (struct scif_endpt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int scif_listen(scif_epd_t epd, int backlog)
{
 struct scif_endpt *ep = (struct scif_endpt *)epd;

 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI listen: ep %p %s\n", ep, scif_ep_states[ep->state]);
 spin_lock(&ep->lock);
 switch (ep->state) {
 case 128:
 case 135:
 case 136:
 case 129:
 case 132:
  spin_unlock(&ep->lock);
  return -EINVAL;
 case 131:
 case 134:
 case 133:
 case 130:
  spin_unlock(&ep->lock);
  return -EISCONN;
 case 137:
  break;
 }

 ep->state = 131;
 ep->backlog = backlog;

 ep->conreqcnt = 0;
 ep->acceptcnt = 0;
 INIT_LIST_HEAD(&ep->conlist);
 init_waitqueue_head(&ep->conwq);
 INIT_LIST_HEAD(&ep->li_accept);
 spin_unlock(&ep->lock);





 scif_teardown_ep(ep);
 ep->qp_info.qp = ((void*)0);

 mutex_lock(&scif_info.eplock);
 list_add_tail(&ep->list, &scif_info.listen);
 mutex_unlock(&scif_info.eplock);
 return 0;
}
