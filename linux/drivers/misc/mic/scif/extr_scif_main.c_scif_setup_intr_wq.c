
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_dev {int node; int intr_bh; scalar_t__ intr_wq; int intr_wqname; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ alloc_ordered_workqueue (int ,int ) ;
 int scif_intr_bh_handler ;
 int snprintf (int ,int,char*,int) ;

int scif_setup_intr_wq(struct scif_dev *scifdev)
{
 if (!scifdev->intr_wq) {
  snprintf(scifdev->intr_wqname, sizeof(scifdev->intr_wqname),
    "SCIF INTR %d", scifdev->node);
  scifdev->intr_wq =
   alloc_ordered_workqueue(scifdev->intr_wqname, 0);
  if (!scifdev->intr_wq)
   return -ENOMEM;
  INIT_WORK(&scifdev->intr_bh, scif_intr_bh_handler);
 }
 return 0;
}
