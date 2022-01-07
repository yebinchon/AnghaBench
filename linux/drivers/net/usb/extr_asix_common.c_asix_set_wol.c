
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;


 int AX_CMD_WRITE_MONITOR_MODE ;
 int AX_MONITOR_LINK ;
 int AX_MONITOR_MAGIC ;
 int EINVAL ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 scalar_t__ asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;

int asix_set_wol(struct net_device *net, struct ethtool_wolinfo *wolinfo)
{
 struct usbnet *dev = netdev_priv(net);
 u8 opt = 0;

 if (wolinfo->wolopts & ~(WAKE_PHY | WAKE_MAGIC))
  return -EINVAL;

 if (wolinfo->wolopts & WAKE_PHY)
  opt |= AX_MONITOR_LINK;
 if (wolinfo->wolopts & WAKE_MAGIC)
  opt |= AX_MONITOR_MAGIC;

 if (asix_write_cmd(dev, AX_CMD_WRITE_MONITOR_MODE,
         opt, 0, 0, ((void*)0), 0) < 0)
  return -EINVAL;

 return 0;
}
