
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; int dev; } ;


 int EINVAL ;
 int __dm9601_set_mac_address (struct usbnet*) ;
 int dev_err (int *,char*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dm9601_set_mac_address(struct net_device *net, void *p)
{
 struct sockaddr *addr = p;
 struct usbnet *dev = netdev_priv(net);

 if (!is_valid_ether_addr(addr->sa_data)) {
  dev_err(&net->dev, "not setting invalid mac address %pM\n",
        addr->sa_data);
  return -EINVAL;
 }

 memcpy(net->dev_addr, addr->sa_data, net->addr_len);
 __dm9601_set_mac_address(dev);

 return 0;
}
