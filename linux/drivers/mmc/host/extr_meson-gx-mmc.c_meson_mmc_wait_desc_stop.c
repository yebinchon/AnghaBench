
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_host {scalar_t__ regs; } ;


 scalar_t__ SD_EMMC_STATUS ;
 int STATUS_BUSY ;
 int STATUS_DESC_BUSY ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int meson_mmc_wait_desc_stop(struct meson_host *host)
{
 u32 status;
 return readl_poll_timeout(host->regs + SD_EMMC_STATUS, status,
      !(status & (STATUS_BUSY | STATUS_DESC_BUSY)),
      100, 5000);
}
