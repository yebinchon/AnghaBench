
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_sl {int idle_mask; int dev; } ;


 int CPSW_SL_MACSTATUS ;
 int ETIMEDOUT ;
 int cpsw_sl_reg_read (struct cpsw_sl*,int ) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

int cpsw_sl_wait_for_idle(struct cpsw_sl *sl, unsigned long tmo)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(tmo);

 do {
  usleep_range(100, 200);
 } while (!(cpsw_sl_reg_read(sl, CPSW_SL_MACSTATUS) &
    sl->idle_mask) && time_after(timeout, jiffies));

 if (!(cpsw_sl_reg_read(sl, CPSW_SL_MACSTATUS) & sl->idle_mask)) {
  dev_err(sl->dev, "cpsw_sl failed to soft-reset.\n");
  return -ETIMEDOUT;
 }

 return 0;
}
