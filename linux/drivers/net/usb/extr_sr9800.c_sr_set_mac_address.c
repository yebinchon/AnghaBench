
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct sr_data {int mac_addr; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ETH_ALEN ;
 int SR_CMD_WRITE_NODE_ID ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int sr_write_cmd_async (struct usbnet*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int sr_set_mac_address(struct net_device *net, void *p)
{
 struct usbnet *dev = netdev_priv(net);
 struct sr_data *data = (struct sr_data *)&dev->data;
 struct sockaddr *addr = p;

 if (netif_running(net))
  return -EBUSY;
 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(net->dev_addr, addr->sa_data, ETH_ALEN);






 memcpy(data->mac_addr, addr->sa_data, ETH_ALEN);
 sr_write_cmd_async(dev, SR_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
      data->mac_addr);

 return 0;
}
