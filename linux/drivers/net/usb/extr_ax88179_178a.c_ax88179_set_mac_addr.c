
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int AX_ACCESS_MAC ;
 int AX_NODE_ID ;
 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ETH_ALEN ;
 int ax88179_write_cmd (struct usbnet*,int ,int ,int ,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ax88179_set_mac_addr(struct net_device *net, void *p)
{
 struct usbnet *dev = netdev_priv(net);
 struct sockaddr *addr = p;
 int ret;

 if (netif_running(net))
  return -EBUSY;
 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(net->dev_addr, addr->sa_data, ETH_ALEN);


 ret = ax88179_write_cmd(dev, AX_ACCESS_MAC, AX_NODE_ID, ETH_ALEN,
     ETH_ALEN, net->dev_addr);
 if (ret < 0)
  return ret;

 return 0;
}
