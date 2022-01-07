
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int phydev; } ;
struct lan78xx_net {int dummy; } ;
struct ethtool_regs {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int *) ;
 int * lan78xx_regs ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int phy_read (int ,int) ;

__attribute__((used)) static void
lan78xx_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
   void *buf)
{
 u32 *data = buf;
 int i, j;
 struct lan78xx_net *dev = netdev_priv(netdev);


 for (i = 0; i < ARRAY_SIZE(lan78xx_regs); i++)
  lan78xx_read_reg(dev, lan78xx_regs[i], &data[i]);

 if (!netdev->phydev)
  return;


 for (j = 0; j < 32; i++, j++)
  data[i] = phy_read(netdev->phydev, j);
}
