
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mscc_miim_dev {scalar_t__ regs; } ;
struct mii_bus {struct mscc_miim_dev* priv; } ;


 int ETIMEDOUT ;
 scalar_t__ MSCC_MIIM_REG_STATUS ;
 int MSCC_MIIM_STATUS_STAT_BUSY ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int mscc_miim_wait_ready(struct mii_bus *bus)
{
 struct mscc_miim_dev *miim = bus->priv;
 u32 val;

 readl_poll_timeout(miim->regs + MSCC_MIIM_REG_STATUS, val,
      !(val & MSCC_MIIM_STATUS_STAT_BUSY), 100, 250000);
 if (val & MSCC_MIIM_STATUS_STAT_BUSY)
  return -ETIMEDOUT;

 return 0;
}
