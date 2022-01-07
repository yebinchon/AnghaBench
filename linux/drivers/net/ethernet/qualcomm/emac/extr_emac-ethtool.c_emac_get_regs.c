
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; int version; } ;
struct emac_adapter {scalar_t__ base; } ;


 int EMAC_MAX_REG_SIZE ;
 int EMAC_REGS_VERSION ;
 scalar_t__* emac_regs ;
 struct emac_adapter* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void emac_get_regs(struct net_device *netdev,
     struct ethtool_regs *regs, void *buff)
{
 struct emac_adapter *adpt = netdev_priv(netdev);
 u32 *val = buff;
 unsigned int i;

 regs->version = EMAC_REGS_VERSION;
 regs->len = EMAC_MAX_REG_SIZE * sizeof(u32);

 for (i = 0; i < EMAC_MAX_REG_SIZE; i++)
  val[i] = readl(adpt->base + emac_regs[i]);
}
