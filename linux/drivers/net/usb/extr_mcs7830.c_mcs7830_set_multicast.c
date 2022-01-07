
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int mcs7830_data_set_multicast (struct net_device*) ;
 int mcs7830_hif_update_config (struct usbnet*) ;
 int mcs7830_hif_update_multicast_hash (struct usbnet*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mcs7830_set_multicast(struct net_device *net)
{
 struct usbnet *dev = netdev_priv(net);

 mcs7830_data_set_multicast(net);

 mcs7830_hif_update_multicast_hash(dev);
 mcs7830_hif_update_config(dev);
}
