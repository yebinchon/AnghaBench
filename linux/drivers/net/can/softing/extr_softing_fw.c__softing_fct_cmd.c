
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct softing {TYPE_1__* pdev; int * dpram; } ;
typedef int int16_t ;
struct TYPE_2__ {int dev; } ;


 int DPRAM_FCT_HOST ;
 size_t DPRAM_FCT_PARAM ;
 size_t DPRAM_FCT_RESULT ;
 int ECANCELED ;
 int ETIMEDOUT ;
 int HZ ;
 int RES_NONE ;
 int RES_OK ;
 int dev_alert (int *,char*,char const*,int) ;
 int ioread16 (int *) ;
 int ioread8 (int *) ;
 int iowrite16 (int ,int *) ;
 int iowrite8 (int,int *) ;
 int jiffies ;
 int rmb () ;
 scalar_t__ time_after (int,unsigned long) ;
 int usleep_range (int,int) ;
 int wmb () ;

__attribute__((used)) static int _softing_fct_cmd(struct softing *card, int16_t cmd, uint16_t vector,
  const char *msg)
{
 int ret;
 unsigned long stamp;

 iowrite16(cmd, &card->dpram[DPRAM_FCT_PARAM]);
 iowrite8(vector >> 8, &card->dpram[DPRAM_FCT_HOST + 1]);
 iowrite8(vector, &card->dpram[DPRAM_FCT_HOST]);

 wmb();
 stamp = jiffies + 1 * HZ;

 do {

  ret = ioread8(&card->dpram[DPRAM_FCT_HOST]) +
   (ioread8(&card->dpram[DPRAM_FCT_HOST + 1]) << 8);

  rmb();
  if (ret == RES_OK)

   return ioread16(&card->dpram[DPRAM_FCT_RESULT]);

  if ((ret != vector) || time_after(jiffies, stamp))
   break;

  usleep_range(500, 10000);
 } while (1);

 ret = (ret == RES_NONE) ? -ETIMEDOUT : -ECANCELED;
 dev_alert(&card->pdev->dev, "firmware %s failed (%i)\n", msg, ret);
 return ret;
}
