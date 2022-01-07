
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs5535_mfgpt_timer {int nr; struct cs5535_mfgpt_chip* chip; } ;
struct cs5535_mfgpt_chip {TYPE_1__* pdev; int lock; int avail; int initialized; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int MFGPT_DOMAIN_WORKING ;
 int MFGPT_MAX_TIMERS ;
 int WARN_ON (int) ;
 int __clear_bit (int,int ) ;
 int __set_bit (int,int ) ;
 struct cs5535_mfgpt_chip cs5535_mfgpt_chip ;
 int dev_info (int *,char*,int) ;
 unsigned long find_first_bit (int ,int) ;
 struct cs5535_mfgpt_timer* kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int,int ) ;

struct cs5535_mfgpt_timer *cs5535_mfgpt_alloc_timer(int timer_nr, int domain)
{
 struct cs5535_mfgpt_chip *mfgpt = &cs5535_mfgpt_chip;
 struct cs5535_mfgpt_timer *timer = ((void*)0);
 unsigned long flags;
 int max;

 if (!mfgpt->initialized)
  goto done;


 if (domain == MFGPT_DOMAIN_WORKING)
  max = 6;
 else
  max = MFGPT_MAX_TIMERS;

 if (timer_nr >= max) {

  WARN_ON(1);
  goto done;
 }

 spin_lock_irqsave(&mfgpt->lock, flags);
 if (timer_nr < 0) {
  unsigned long t;


  t = find_first_bit(mfgpt->avail, max);

  timer_nr = t < max ? (int) t : -1;
 } else {

  if (!test_bit(timer_nr, mfgpt->avail))
   timer_nr = -1;
 }

 if (timer_nr >= 0)

  __clear_bit(timer_nr, mfgpt->avail);
 spin_unlock_irqrestore(&mfgpt->lock, flags);

 if (timer_nr < 0)
  goto done;

 timer = kmalloc(sizeof(*timer), GFP_KERNEL);
 if (!timer) {

  spin_lock_irqsave(&mfgpt->lock, flags);
  __set_bit(timer_nr, mfgpt->avail);
  spin_unlock_irqrestore(&mfgpt->lock, flags);
  goto done;
 }
 timer->chip = mfgpt;
 timer->nr = timer_nr;
 dev_info(&mfgpt->pdev->dev, "registered timer %d\n", timer_nr);

done:
 return timer;
}
