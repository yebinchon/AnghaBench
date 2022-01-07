
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int AX_CMD_READ_MONITOR_MODE ;
 int AX_MONITOR_LINK ;
 int AX_MONITOR_MAGIC ;
 int WAKE_MAGIC ;
 int WAKE_PHY ;
 scalar_t__ asix_read_cmd (struct usbnet*,int ,int ,int ,int,int*,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;

void asix_get_wol(struct net_device *net, struct ethtool_wolinfo *wolinfo)
{
 struct usbnet *dev = netdev_priv(net);
 u8 opt;

 if (asix_read_cmd(dev, AX_CMD_READ_MONITOR_MODE,
     0, 0, 1, &opt, 0) < 0) {
  wolinfo->supported = 0;
  wolinfo->wolopts = 0;
  return;
 }
 wolinfo->supported = WAKE_PHY | WAKE_MAGIC;
 wolinfo->wolopts = 0;
 if (opt & AX_MONITOR_LINK)
  wolinfo->wolopts |= WAKE_PHY;
 if (opt & AX_MONITOR_MAGIC)
  wolinfo->wolopts |= WAKE_MAGIC;
}
