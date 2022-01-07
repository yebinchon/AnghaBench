
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmio_mmc_host {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CTL_STATUS ;
 int EBUSY ;
 int TMIO_STAT_CMD_BUSY ;
 int dev_warn (int *,char*) ;
 int sd_ctrl_read16_and_16_as_32 (struct tmio_mmc_host*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int renesas_sdhi_wait_idle(struct tmio_mmc_host *host, u32 bit)
{
 int timeout = 1000;

 u32 wait_state = (bit == TMIO_STAT_CMD_BUSY ? TMIO_STAT_CMD_BUSY : 0);

 while (--timeout && (sd_ctrl_read16_and_16_as_32(host, CTL_STATUS)
         & bit) == wait_state)
  udelay(1);

 if (!timeout) {
  dev_warn(&host->pdev->dev, "timeout waiting for SD bus idle\n");
  return -EBUSY;
 }

 return 0;
}
