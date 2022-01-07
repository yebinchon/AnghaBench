
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct cs5535_mfgpt_timer {TYPE_1__* chip; int nr; } ;
struct TYPE_2__ {int lock; int avail; } ;


 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_SETUP ;
 int __set_bit (int ,int ) ;
 int cs5535_mfgpt_read (struct cs5535_mfgpt_timer*,int ) ;
 int kfree (struct cs5535_mfgpt_timer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void cs5535_mfgpt_free_timer(struct cs5535_mfgpt_timer *timer)
{
 unsigned long flags;
 uint16_t val;


 val = cs5535_mfgpt_read(timer, MFGPT_REG_SETUP);
 if (!(val & MFGPT_SETUP_SETUP)) {
  spin_lock_irqsave(&timer->chip->lock, flags);
  __set_bit(timer->nr, timer->chip->avail);
  spin_unlock_irqrestore(&timer->chip->lock, flags);
 }

 kfree(timer);
}
