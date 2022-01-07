
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scif_hw_dev {TYPE_1__* hw_ops; } ;
struct scif_dev {int node; int * cookie; struct scif_hw_dev* sdev; } ;
struct TYPE_4__ {int card_initiated_exit; int misc_work; } ;
struct TYPE_3__ {int (* free_irq ) (struct scif_hw_dev*,int *,struct scif_dev*) ;} ;


 int flush_work (int *) ;
 int scif_cleanup_qp (struct scif_dev*) ;
 int scif_cleanup_rma_for_zombies (int ) ;
 int scif_destroy_intr_wq (struct scif_dev*) ;
 int scif_destroy_p2p (struct scif_dev*) ;
 TYPE_2__ scif_info ;
 int scif_invalidate_ep (int ) ;
 int scif_send_acks (struct scif_dev*) ;
 int scif_send_exit (struct scif_dev*) ;
 int scif_zap_mmaps (int ) ;
 scalar_t__ scifdev_is_p2p (struct scif_dev*) ;
 int stub1 (struct scif_hw_dev*,int *,struct scif_dev*) ;

void scif_cleanup_scifdev(struct scif_dev *dev)
{
 struct scif_hw_dev *sdev = dev->sdev;

 if (!dev->sdev)
  return;
 if (scifdev_is_p2p(dev)) {
  if (dev->cookie) {
   sdev->hw_ops->free_irq(sdev, dev->cookie, dev);
   dev->cookie = ((void*)0);
  }
  scif_destroy_intr_wq(dev);
 }
 flush_work(&scif_info.misc_work);
 scif_destroy_p2p(dev);
 scif_invalidate_ep(dev->node);
 scif_zap_mmaps(dev->node);
 scif_cleanup_rma_for_zombies(dev->node);
 flush_work(&scif_info.misc_work);
 scif_send_acks(dev);
 if (!dev->node && scif_info.card_initiated_exit) {




  scif_send_exit(dev);
  scif_info.card_initiated_exit = 0;
 }
 scif_cleanup_qp(dev);
}
