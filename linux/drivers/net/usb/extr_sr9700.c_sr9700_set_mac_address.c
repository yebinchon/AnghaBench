
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int EINVAL ;
 int SR_PAR ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int sr_write_async (struct usbnet*,int ,int,int ) ;

__attribute__((used)) static int sr9700_set_mac_address(struct net_device *netdev, void *p)
{
 struct usbnet *dev = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data)) {
  netdev_err(netdev, "not setting invalid mac address %pM\n",
      addr->sa_data);
  return -EINVAL;
 }

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 sr_write_async(dev, SR_PAR, 6, netdev->dev_addr);

 return 0;
}
