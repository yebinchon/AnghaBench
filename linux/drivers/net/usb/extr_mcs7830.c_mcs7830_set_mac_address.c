
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int is_valid_ether_addr (int ) ;
 int mcs7830_hif_set_mac_address (struct usbnet*,int ) ;
 int memcpy (int ,int ,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int mcs7830_set_mac_address(struct net_device *netdev, void *p)
{
 int ret;
 struct usbnet *dev = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (netif_running(netdev))
  return -EBUSY;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 ret = mcs7830_hif_set_mac_address(dev, addr->sa_data);

 if (ret < 0)
  return ret;


 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 return 0;
}
