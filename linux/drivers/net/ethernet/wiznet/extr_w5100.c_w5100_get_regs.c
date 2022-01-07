
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;


 int S0_REGS (struct w5100_priv*) ;
 int W5100_COMMON_REGS ;
 int W5100_COMMON_REGS_LEN ;
 int W5100_S0_REGS_LEN ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int w5100_readbulk (struct w5100_priv*,int ,void*,int ) ;

__attribute__((used)) static void w5100_get_regs(struct net_device *ndev,
      struct ethtool_regs *regs, void *buf)
{
 struct w5100_priv *priv = netdev_priv(ndev);

 regs->version = 1;
 w5100_readbulk(priv, W5100_COMMON_REGS, buf, W5100_COMMON_REGS_LEN);
 buf += W5100_COMMON_REGS_LEN;
 w5100_readbulk(priv, S0_REGS(priv), buf, W5100_S0_REGS_LEN);
}
