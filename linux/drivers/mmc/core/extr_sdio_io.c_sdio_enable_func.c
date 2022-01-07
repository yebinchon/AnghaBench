
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int num; int card; int enable_timeout; } ;


 int EINVAL ;
 int ETIME ;
 int SDIO_CCCR_IOEx ;
 int SDIO_CCCR_IORx ;
 unsigned long jiffies ;
 int mmc_io_rw_direct (int ,int,int ,int ,unsigned char,unsigned char*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int pr_debug (char*,int ) ;
 int sdio_func_id (struct sdio_func*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int sdio_enable_func(struct sdio_func *func)
{
 int ret;
 unsigned char reg;
 unsigned long timeout;

 if (!func)
  return -EINVAL;

 pr_debug("SDIO: Enabling device %s...\n", sdio_func_id(func));

 ret = mmc_io_rw_direct(func->card, 0, 0, SDIO_CCCR_IOEx, 0, &reg);
 if (ret)
  goto err;

 reg |= 1 << func->num;

 ret = mmc_io_rw_direct(func->card, 1, 0, SDIO_CCCR_IOEx, reg, ((void*)0));
 if (ret)
  goto err;

 timeout = jiffies + msecs_to_jiffies(func->enable_timeout);

 while (1) {
  ret = mmc_io_rw_direct(func->card, 0, 0, SDIO_CCCR_IORx, 0, &reg);
  if (ret)
   goto err;
  if (reg & (1 << func->num))
   break;
  ret = -ETIME;
  if (time_after(jiffies, timeout))
   goto err;
 }

 pr_debug("SDIO: Enabled device %s\n", sdio_func_id(func));

 return 0;

err:
 pr_debug("SDIO: Failed to enable device %s\n", sdio_func_id(func));
 return ret;
}
