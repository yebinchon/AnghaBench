
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_dev {int * intr_wq; } ;


 int destroy_workqueue (int *) ;

void scif_destroy_intr_wq(struct scif_dev *scifdev)
{
 if (scifdev->intr_wq) {
  destroy_workqueue(scifdev->intr_wq);
  scifdev->intr_wq = ((void*)0);
 }
}
