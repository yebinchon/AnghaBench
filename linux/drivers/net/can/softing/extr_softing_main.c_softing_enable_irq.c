
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int requested; int nr; } ;
struct softing {TYPE_3__ irq; TYPE_2__* pdev; TYPE_1__* pdat; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int generation; } ;


 int IRQF_SHARED ;
 int dev_alert (int *,char*,int ) ;
 int dev_name (int *) ;
 int free_irq (int ,struct softing*) ;
 int request_threaded_irq (int ,int ,int ,int ,int ,struct softing*) ;
 int softing_irq_thread ;
 int softing_irq_v1 ;
 int softing_irq_v2 ;

int softing_enable_irq(struct softing *card, int enable)
{
 int ret;

 if (!card->irq.nr) {
  return 0;
 } else if (card->irq.requested && !enable) {
  free_irq(card->irq.nr, card);
  card->irq.requested = 0;
 } else if (!card->irq.requested && enable) {
  ret = request_threaded_irq(card->irq.nr,
    (card->pdat->generation >= 2) ?
     softing_irq_v2 : softing_irq_v1,
    softing_irq_thread, IRQF_SHARED,
    dev_name(&card->pdev->dev), card);
  if (ret) {
   dev_alert(&card->pdev->dev,
     "request_threaded_irq(%u) failed\n",
     card->irq.nr);
   return ret;
  }
  card->irq.requested = 1;
 }
 return 0;
}
