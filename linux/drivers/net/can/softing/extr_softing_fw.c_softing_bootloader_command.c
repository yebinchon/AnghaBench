
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct softing {TYPE_1__* pdev; int * dpram; } ;
typedef int int16_t ;
struct TYPE_2__ {int dev; } ;


 size_t DPRAM_COMMAND ;
 size_t DPRAM_RECEIPT ;
 int ECANCELED ;
 int ETIMEDOUT ;
 int HZ ;
 int RES_NONE ;
 int RES_OK ;
 int current ;
 int dev_alert (int *,char*,char const*,int) ;
 int ioread16 (int *) ;
 int iowrite16 (int,int *) ;
 int jiffies ;
 int rmb () ;
 int signal_pending (int ) ;
 scalar_t__ time_after (int,unsigned long) ;
 int usleep_range (int,int) ;
 int wmb () ;

int softing_bootloader_command(struct softing *card, int16_t cmd,
  const char *msg)
{
 int ret;
 unsigned long stamp;

 iowrite16(RES_NONE, &card->dpram[DPRAM_RECEIPT]);
 iowrite16(cmd, &card->dpram[DPRAM_COMMAND]);

 wmb();
 stamp = jiffies + 3 * HZ;

 do {
  ret = ioread16(&card->dpram[DPRAM_RECEIPT]);

  rmb();
  if (ret == RES_OK)
   return 0;
  if (time_after(jiffies, stamp))
   break;

  usleep_range(500, 10000);
 } while (!signal_pending(current));

 ret = (ret == RES_NONE) ? -ETIMEDOUT : -ECANCELED;
 dev_alert(&card->pdev->dev, "bootloader %s failed (%i)\n", msg, ret);
 return ret;
}
