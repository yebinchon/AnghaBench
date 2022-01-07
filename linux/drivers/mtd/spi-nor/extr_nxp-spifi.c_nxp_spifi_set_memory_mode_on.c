
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxp_spifi {int memory_mode; int dev; scalar_t__ io_base; int mcmd; } ;


 scalar_t__ SPIFI_MCMD ;
 scalar_t__ SPIFI_STAT ;
 int SPIFI_STAT_MCINIT ;
 int dev_err (int ,char*) ;
 int readb_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int nxp_spifi_set_memory_mode_on(struct nxp_spifi *spifi)
{
 u8 stat;
 int ret;

 if (spifi->memory_mode)
  return 0;

 writel(spifi->mcmd, spifi->io_base + SPIFI_MCMD);
 ret = readb_poll_timeout(spifi->io_base + SPIFI_STAT, stat,
     stat & SPIFI_STAT_MCINIT, 10, 30);
 if (ret)
  dev_err(spifi->dev, "unable to enter memory mode\n");
 else
  spifi->memory_mode = 1;

 return ret;
}
