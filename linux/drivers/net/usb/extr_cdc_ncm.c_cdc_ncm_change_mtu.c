
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int mtu; } ;


 scalar_t__ cdc_ncm_eth_hlen (struct usbnet*) ;
 int cdc_ncm_set_dgram_size (struct usbnet*,scalar_t__) ;
 struct usbnet* netdev_priv (struct net_device*) ;

int cdc_ncm_change_mtu(struct net_device *net, int new_mtu)
{
 struct usbnet *dev = netdev_priv(net);

 net->mtu = new_mtu;
 cdc_ncm_set_dgram_size(dev, new_mtu + cdc_ncm_eth_hlen(dev));

 return 0;
}
