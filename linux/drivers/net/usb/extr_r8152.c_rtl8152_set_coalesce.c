
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable ) (struct r8152*) ;int (* disable ) (struct r8152*) ;} ;
struct r8152 {int version; scalar_t__ coalesce; int intf; int control; int napi; int flags; TYPE_1__ rtl_ops; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; } ;


 scalar_t__ COALESCE_SLOW ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int RTL8152_SET_RX_MODE ;



 int _rtl8152_set_rx_mode (struct net_device*) ;
 int clear_bit (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct r8152* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rtl_start_rx (struct r8152*) ;
 int stub1 (struct r8152*) ;
 int stub2 (struct r8152*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int rtl8152_set_coalesce(struct net_device *netdev,
    struct ethtool_coalesce *coalesce)
{
 struct r8152 *tp = netdev_priv(netdev);
 int ret;

 switch (tp->version) {
 case 130:
 case 129:
 case 128:
  return -EOPNOTSUPP;
 default:
  break;
 }

 if (coalesce->rx_coalesce_usecs > COALESCE_SLOW)
  return -EINVAL;

 ret = usb_autopm_get_interface(tp->intf);
 if (ret < 0)
  return ret;

 mutex_lock(&tp->control);

 if (tp->coalesce != coalesce->rx_coalesce_usecs) {
  tp->coalesce = coalesce->rx_coalesce_usecs;

  if (netif_running(netdev) && netif_carrier_ok(netdev)) {
   netif_stop_queue(netdev);
   napi_disable(&tp->napi);
   tp->rtl_ops.disable(tp);
   tp->rtl_ops.enable(tp);
   rtl_start_rx(tp);
   clear_bit(RTL8152_SET_RX_MODE, &tp->flags);
   _rtl8152_set_rx_mode(netdev);
   napi_enable(&tp->napi);
   netif_wake_queue(netdev);
  }
 }

 mutex_unlock(&tp->control);

 usb_autopm_put_interface(tp->intf);

 return ret;
}
