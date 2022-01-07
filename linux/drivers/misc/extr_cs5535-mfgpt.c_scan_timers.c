
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct cs5535_mfgpt_timer {int nr; struct cs5535_mfgpt_chip* chip; } ;
struct cs5535_mfgpt_chip {int lock; int avail; } ;


 int MFGPT_MAX_TIMERS ;
 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_SETUP ;
 int __set_bit (int,int ) ;
 int cs5535_mfgpt_read (struct cs5535_mfgpt_timer*,int ) ;
 int mfgpt_reset_timers ;
 int reset_all_timers () ;
 int soft_reset () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int scan_timers(struct cs5535_mfgpt_chip *mfgpt)
{
 struct cs5535_mfgpt_timer timer = { .chip = mfgpt };
 unsigned long flags;
 int timers = 0;
 uint16_t val;
 int i;


 if (mfgpt_reset_timers == 1)
  reset_all_timers();
 else if (mfgpt_reset_timers == 2)
  soft_reset();


 spin_lock_irqsave(&mfgpt->lock, flags);
 for (i = 0; i < MFGPT_MAX_TIMERS; i++) {
  timer.nr = i;
  val = cs5535_mfgpt_read(&timer, MFGPT_REG_SETUP);
  if (!(val & MFGPT_SETUP_SETUP) || mfgpt_reset_timers == 2) {
   __set_bit(i, mfgpt->avail);
   timers++;
  }
 }
 spin_unlock_irqrestore(&mfgpt->lock, flags);

 return timers;
}
