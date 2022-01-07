
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pcnet32_private {int phycount; } ;
struct net_device {int dummy; } ;


 int PCNET32_NUM_REGS ;
 int PCNET32_REGS_PER_PHY ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int pcnet32_get_regs_len(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 int j = lp->phycount * PCNET32_REGS_PER_PHY;

 return (PCNET32_NUM_REGS + j) * sizeof(u16);
}
