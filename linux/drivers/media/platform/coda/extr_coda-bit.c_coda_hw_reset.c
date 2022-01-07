
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coda_dev {TYPE_1__* devtype; int rstc; int coda_mutex; } ;
struct coda_ctx {struct coda_dev* dev; } ;
struct TYPE_2__ {scalar_t__ product; } ;


 int CODA9_GDI_BUS_CTRL ;
 int CODA9_GDI_BUS_STATUS ;
 scalar_t__ CODA_960 ;
 int CODA_REG_BIT_BUSY ;
 unsigned int CODA_REG_BIT_BUSY_FLAG ;
 int CODA_REG_BIT_CODE_RUN ;
 int CODA_REG_BIT_RUN_INDEX ;
 unsigned int CODA_REG_RUN_ENABLE ;
 int ENOENT ;
 int ETIME ;
 int coda_read (struct coda_dev*,int ) ;
 int coda_wait_timeout (struct coda_dev*) ;
 int coda_write (struct coda_dev*,unsigned int,int ) ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int lockdep_assert_held (int *) ;
 unsigned long msecs_to_jiffies (int) ;
 int reset_control_reset (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int coda_hw_reset(struct coda_ctx *ctx)
{
 struct coda_dev *dev = ctx->dev;
 unsigned long timeout;
 unsigned int idx;
 int ret;

 lockdep_assert_held(&dev->coda_mutex);

 if (!dev->rstc)
  return -ENOENT;

 idx = coda_read(dev, CODA_REG_BIT_RUN_INDEX);

 if (dev->devtype->product == CODA_960) {
  timeout = jiffies + msecs_to_jiffies(100);
  coda_write(dev, 0x11, CODA9_GDI_BUS_CTRL);
  while (coda_read(dev, CODA9_GDI_BUS_STATUS) != 0x77) {
   if (time_after(jiffies, timeout))
    return -ETIME;
   cpu_relax();
  }
 }

 ret = reset_control_reset(dev->rstc);
 if (ret < 0)
  return ret;

 if (dev->devtype->product == CODA_960)
  coda_write(dev, 0x00, CODA9_GDI_BUS_CTRL);
 coda_write(dev, CODA_REG_BIT_BUSY_FLAG, CODA_REG_BIT_BUSY);
 coda_write(dev, CODA_REG_RUN_ENABLE, CODA_REG_BIT_CODE_RUN);
 ret = coda_wait_timeout(dev);
 coda_write(dev, idx, CODA_REG_BIT_RUN_INDEX);

 return ret;
}
