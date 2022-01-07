
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct usbnet {int data; } ;
struct net_device {int dummy; } ;
struct cdc_mbim_state {int flags; } ;
typedef int __be16 ;


 int FLAG_IPS0_VLAN ;
 scalar_t__ MBIM_IPS0_VID ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cdc_mbim_rx_kill_vid(struct net_device *netdev, __be16 proto, u16 vid)
{
 struct usbnet *dev = netdev_priv(netdev);
 struct cdc_mbim_state *info = (void *)&dev->data;


 if (vid == MBIM_IPS0_VID)
  info->flags &= ~FLAG_IPS0_VLAN;
 return 0;
}
