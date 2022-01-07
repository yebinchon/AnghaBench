
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_hw_dev {TYPE_1__* hw_ops; } ;
struct scif_dev {int intr_bh; int intr_wq; int db; struct scif_hw_dev* sdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* ack_interrupt ) (struct scif_hw_dev*,int ) ;} ;


 int IRQ_HANDLED ;
 int queue_work (int ,int *) ;
 int stub1 (struct scif_hw_dev*,int ) ;

irqreturn_t scif_intr_handler(int irq, void *data)
{
 struct scif_dev *scifdev = data;
 struct scif_hw_dev *sdev = scifdev->sdev;

 sdev->hw_ops->ack_interrupt(sdev, scifdev->db);
 queue_work(scifdev->intr_wq, &scifdev->intr_bh);
 return IRQ_HANDLED;
}
