
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxp_spifi {int dev; scalar_t__ io_base; } ;


 scalar_t__ SPIFI_STAT ;
 int SPIFI_STAT_RESET ;
 int dev_warn (int ,char*) ;
 int readb_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int nxp_spifi_reset(struct nxp_spifi *spifi)
{
 u8 stat;
 int ret;

 writel(SPIFI_STAT_RESET, spifi->io_base + SPIFI_STAT);
 ret = readb_poll_timeout(spifi->io_base + SPIFI_STAT, stat,
     !(stat & SPIFI_STAT_RESET), 10, 30);
 if (ret)
  dev_warn(spifi->dev, "state reset timed out\n");

 return ret;
}
