
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct scif_endpt* qp; } ;
struct scif_endpt {TYPE_2__ qp_info; int state; int recvlock; int sendlock; int lock; } ;
typedef struct scif_endpt* scif_epd_t ;
struct TYPE_4__ {int this_device; } ;
struct TYPE_6__ {TYPE_1__ mdev; } ;


 int GFP_KERNEL ;
 int SCIFEP_UNBOUND ;
 int dev_dbg (int ,char*,struct scif_endpt*) ;
 int kfree (struct scif_endpt*) ;
 void* kzalloc (int,int ) ;
 int might_sleep () ;
 int mutex_init (int *) ;
 int scif_anon_inode_getfile (struct scif_endpt*) ;
 TYPE_3__ scif_info ;
 int scif_rma_ep_init (struct scif_endpt*) ;
 int spin_lock_init (int *) ;

scif_epd_t scif_open(void)
{
 struct scif_endpt *ep;
 int err;

 might_sleep();
 ep = kzalloc(sizeof(*ep), GFP_KERNEL);
 if (!ep)
  goto err_ep_alloc;

 ep->qp_info.qp = kzalloc(sizeof(*ep->qp_info.qp), GFP_KERNEL);
 if (!ep->qp_info.qp)
  goto err_qp_alloc;

 err = scif_anon_inode_getfile(ep);
 if (err)
  goto err_anon_inode;

 spin_lock_init(&ep->lock);
 mutex_init(&ep->sendlock);
 mutex_init(&ep->recvlock);

 scif_rma_ep_init(ep);
 ep->state = SCIFEP_UNBOUND;
 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI open: ep %p success\n", ep);
 return ep;

err_anon_inode:
 kfree(ep->qp_info.qp);
err_qp_alloc:
 kfree(ep);
err_ep_alloc:
 return ((void*)0);
}
