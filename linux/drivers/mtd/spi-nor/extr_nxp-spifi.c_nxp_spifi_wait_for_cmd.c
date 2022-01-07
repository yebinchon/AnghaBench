
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxp_spifi {int dev; scalar_t__ io_base; } ;


 scalar_t__ SPIFI_STAT ;
 int SPIFI_STAT_CMD ;
 int dev_warn (int ,char*) ;
 int readb_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int nxp_spifi_wait_for_cmd(struct nxp_spifi *spifi)
{
 u8 stat;
 int ret;

 ret = readb_poll_timeout(spifi->io_base + SPIFI_STAT, stat,
     !(stat & SPIFI_STAT_CMD), 10, 30);
 if (ret)
  dev_warn(spifi->dev, "command timed out\n");

 return ret;
}
