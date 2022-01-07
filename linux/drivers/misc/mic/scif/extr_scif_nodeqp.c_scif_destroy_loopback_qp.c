
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scif_dev {int * sdev; TYPE_3__* qpairs; } ;
struct TYPE_4__ {TYPE_3__* rb_base; } ;
struct TYPE_6__ {TYPE_1__ outbound_q; } ;
struct TYPE_5__ {int * loopb_dev; int loopb_wq; } ;


 int destroy_workqueue (int ) ;
 int kfree (TYPE_3__*) ;
 int scif_destroy_intr_wq (struct scif_dev*) ;
 TYPE_2__ scif_info ;
 int scif_peer_unregister_device (struct scif_dev*) ;

int scif_destroy_loopback_qp(struct scif_dev *scifdev)
{
 scif_peer_unregister_device(scifdev);
 destroy_workqueue(scif_info.loopb_wq);
 scif_destroy_intr_wq(scifdev);
 kfree(scifdev->qpairs->outbound_q.rb_base);
 kfree(scifdev->qpairs);
 scifdev->sdev = ((void*)0);
 scif_info.loopb_dev = ((void*)0);
 return 0;
}
