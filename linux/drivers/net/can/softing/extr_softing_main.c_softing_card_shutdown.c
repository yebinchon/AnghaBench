
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int up; int lock; } ;
struct TYPE_4__ {scalar_t__ requested; scalar_t__ nr; } ;
struct softing {TYPE_3__ fw; int pdev; TYPE_2__* pdat; TYPE_1__ irq; } ;
struct TYPE_5__ {int (* reset ) (int ,int) ;int (* enable_irq ) (int ,int ) ;} ;


 int free_irq (scalar_t__,struct softing*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int softing_set_reset_dpram (struct softing*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int) ;

__attribute__((used)) static void softing_card_shutdown(struct softing *card)
{
 int fw_up = 0;

 if (mutex_lock_interruptible(&card->fw.lock))
                           ;
 fw_up = card->fw.up;
 card->fw.up = 0;

 if (card->irq.requested && card->irq.nr) {
  free_irq(card->irq.nr, card);
  card->irq.requested = 0;
 }
 if (fw_up) {
  if (card->pdat->enable_irq)
   card->pdat->enable_irq(card->pdev, 0);
  softing_set_reset_dpram(card);
  if (card->pdat->reset)
   card->pdat->reset(card->pdev, 1);
 }
 mutex_unlock(&card->fw.lock);
}
