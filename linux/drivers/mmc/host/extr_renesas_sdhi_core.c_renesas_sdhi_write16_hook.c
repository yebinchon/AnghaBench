
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmio_mmc_host {TYPE_1__* pdata; } ;
struct TYPE_2__ {int flags; } ;
 int TMIO_MMC_HAVE_CBSY ;
 int TMIO_STAT_CMD_BUSY ;
 int TMIO_STAT_SCLKDIVEN ;
 int renesas_sdhi_wait_idle (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static int renesas_sdhi_write16_hook(struct tmio_mmc_host *host, int addr)
{
 u32 bit = TMIO_STAT_SCLKDIVEN;

 switch (addr) {
 case 134:
 case 131:
 case 129:
 case 132:
 case 133:
 case 130:
 case 136:
 case 128:
  if (host->pdata->flags & TMIO_MMC_HAVE_CBSY)
   bit = TMIO_STAT_CMD_BUSY;

 case 135:
  return renesas_sdhi_wait_idle(host, bit);
 }

 return 0;
}
