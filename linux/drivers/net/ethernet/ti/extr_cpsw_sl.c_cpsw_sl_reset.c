
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpsw_sl {int dev; } ;


 int CPSW_SL_SOFT_RESET ;
 int CPSW_SL_SOFT_RESET_BIT ;
 int cpsw_sl_reg_read (struct cpsw_sl*,int ) ;
 int cpsw_sl_reg_write (struct cpsw_sl*,int ,int) ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

void cpsw_sl_reset(struct cpsw_sl *sl, unsigned long tmo)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(tmo);


 cpsw_sl_reg_write(sl, CPSW_SL_SOFT_RESET, CPSW_SL_SOFT_RESET_BIT);


 do {
  usleep_range(100, 200);
 } while ((cpsw_sl_reg_read(sl, CPSW_SL_SOFT_RESET) &
    CPSW_SL_SOFT_RESET_BIT) &&
    time_after(timeout, jiffies));

 if (cpsw_sl_reg_read(sl, CPSW_SL_SOFT_RESET) & CPSW_SL_SOFT_RESET_BIT)
  dev_err(sl->dev, "cpsw_sl failed to soft-reset.\n");
}
