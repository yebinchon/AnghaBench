
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct r8152 {int version; int intf; int control; } ;
struct net_device {int mtu; } ;


 scalar_t__ ETH_FCS_LEN ;
 int MCU_TYPE_PLA ;
 int PLA_RMS ;



 scalar_t__ VLAN_ETH_HLEN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int ocp_write_word (struct r8152*,int ,int ,scalar_t__) ;
 int r8153_set_rx_early_size (struct r8152*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_change_mtu(struct net_device *dev, int new_mtu)
{
 struct r8152 *tp = netdev_priv(dev);
 int ret;

 switch (tp->version) {
 case 130:
 case 129:
 case 128:
  dev->mtu = new_mtu;
  return 0;
 default:
  break;
 }

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  return ret;

 mutex_lock(&tp->control);

 dev->mtu = new_mtu;

 if (netif_running(dev)) {
  u32 rms = new_mtu + VLAN_ETH_HLEN + ETH_FCS_LEN;

  ocp_write_word(tp, MCU_TYPE_PLA, PLA_RMS, rms);

  if (netif_carrier_ok(dev))
   r8153_set_rx_early_size(tp);
 }

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

 return ret;
}
