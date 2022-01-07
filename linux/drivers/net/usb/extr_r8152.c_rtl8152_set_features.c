
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int intf; int control; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 int rtl_rx_vlan_en (struct r8152*,int) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_set_features(struct net_device *dev,
    netdev_features_t features)
{
 netdev_features_t changed = features ^ dev->features;
 struct r8152 *tp = netdev_priv(dev);
 int ret;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  goto out;

 mutex_lock(&tp->control);

 if (changed & NETIF_F_HW_VLAN_CTAG_RX) {
  if (features & NETIF_F_HW_VLAN_CTAG_RX)
   rtl_rx_vlan_en(tp, 1);
  else
   rtl_rx_vlan_en(tp, 0);
 }

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

out:
 return ret;
}
