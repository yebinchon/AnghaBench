
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera {int dev; int regmap; } ;
typedef int ktime_t ;


 int ETIMEDOUT ;
 int MADERA_BOOT_DONE_EINT1 ;
 unsigned int MADERA_BOOT_DONE_STS1 ;
 int MADERA_BOOT_POLL_INTERVAL_USEC ;
 int MADERA_BOOT_POLL_TIMEOUT_USEC ;
 int MADERA_IRQ1_RAW_STATUS_1 ;
 int MADERA_IRQ1_STATUS_1 ;
 int dev_err (int ,char*) ;
 int ktime_add_us (int ,int ) ;
 int ktime_after (int ,int ) ;
 int ktime_get () ;
 int pm_runtime_mark_last_busy (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int madera_wait_for_boot(struct madera *madera)
{
 ktime_t timeout;
 unsigned int val = 0;
 int ret = 0;
 timeout = ktime_add_us(ktime_get(), MADERA_BOOT_POLL_TIMEOUT_USEC);
 regmap_read(madera->regmap, MADERA_IRQ1_RAW_STATUS_1, &val);
 while (!(val & MADERA_BOOT_DONE_STS1) &&
        !ktime_after(ktime_get(), timeout)) {
  usleep_range(MADERA_BOOT_POLL_INTERVAL_USEC / 2,
        MADERA_BOOT_POLL_INTERVAL_USEC);
  regmap_read(madera->regmap, MADERA_IRQ1_RAW_STATUS_1, &val);
 }

 if (!(val & MADERA_BOOT_DONE_STS1)) {
  dev_err(madera->dev, "Polling BOOT_DONE_STS timed out\n");
  ret = -ETIMEDOUT;
 }





 regmap_write(madera->regmap, MADERA_IRQ1_STATUS_1,
       MADERA_BOOT_DONE_EINT1);

 pm_runtime_mark_last_busy(madera->dev);

 return ret;
}
