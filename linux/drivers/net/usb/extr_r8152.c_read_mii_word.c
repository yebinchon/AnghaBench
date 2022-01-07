
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int R8152_PHY_ID ;
 int RTL8152_UNPLUG ;
 struct r8152* netdev_priv (struct net_device*) ;
 int r8152_mdio_read (struct r8152*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int read_mii_word(struct net_device *netdev, int phy_id, int reg)
{
 struct r8152 *tp = netdev_priv(netdev);
 int ret;

 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return -ENODEV;

 if (phy_id != R8152_PHY_ID)
  return -EINVAL;

 ret = r8152_mdio_read(tp, reg);

 return ret;
}
