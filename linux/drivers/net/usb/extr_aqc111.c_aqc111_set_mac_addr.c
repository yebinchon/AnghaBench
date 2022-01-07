
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dev_addr; } ;


 int AQ_ACCESS_MAC ;
 int ETH_ALEN ;
 int SFR_NODE_ID ;
 int aqc111_write_cmd (struct usbnet*,int ,int ,int ,int ,int ) ;
 int eth_mac_addr (struct net_device*,void*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int aqc111_set_mac_addr(struct net_device *net, void *p)
{
 struct usbnet *dev = netdev_priv(net);
 int ret = 0;

 ret = eth_mac_addr(net, p);
 if (ret < 0)
  return ret;


 return aqc111_write_cmd(dev, AQ_ACCESS_MAC, SFR_NODE_ID, ETH_ALEN,
    ETH_ALEN, net->dev_addr);
}
