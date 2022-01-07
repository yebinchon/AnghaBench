
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {scalar_t__ version; } ;
struct ethoc {int dummy; } ;


 int ETH_END ;
 int ethoc_read (struct ethoc*,unsigned int) ;
 struct ethoc* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ethoc_get_regs(struct net_device *dev, struct ethtool_regs *regs,
      void *p)
{
 struct ethoc *priv = netdev_priv(dev);
 u32 *regs_buff = p;
 unsigned i;

 regs->version = 0;
 for (i = 0; i < ETH_END / sizeof(u32); ++i)
  regs_buff[i] = ethoc_read(priv, i * sizeof(u32));
}
