
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct moxart_host {int mmc; scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ MAX_RETRIES ;
 scalar_t__ REG_CLEAR ;
 scalar_t__ REG_STATUS ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 scalar_t__ readl (scalar_t__) ;
 int udelay (int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int moxart_wait_for_status(struct moxart_host *host,
      u32 mask, u32 *status)
{
 int ret = -ETIMEDOUT;
 u32 i;

 for (i = 0; i < MAX_RETRIES; i++) {
  *status = readl(host->base + REG_STATUS);
  if (!(*status & mask)) {
   udelay(5);
   continue;
  }
  writel(*status & mask, host->base + REG_CLEAR);
  ret = 0;
  break;
 }

 if (ret)
  dev_err(mmc_dev(host->mmc), "timed out waiting for status\n");

 return ret;
}
