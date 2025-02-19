
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* disable ) (struct r8152*) ;int (* enable ) (struct r8152*) ;} ;
struct napi_struct {int dummy; } ;
struct r8152 {scalar_t__ tx_qlen; int tx_tl; TYPE_1__ rtl_ops; int tx_queue; struct napi_struct napi; int flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int LINK_STATUS ;
 int RTL8152_SET_RX_MODE ;
 int _rtl8152_set_rx_mode (struct net_device*) ;
 int clear_bit (int ,int *) ;
 int link ;
 int napi_disable (struct napi_struct*) ;
 int napi_enable (struct napi_struct*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct r8152*,int ,struct net_device*,char*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rtl8152_get_speed (struct r8152*) ;
 int rtl_start_rx (struct r8152*) ;
 scalar_t__ skb_queue_len (int *) ;
 int stub1 (struct r8152*) ;
 int stub2 (struct r8152*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void set_carrier(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;
 struct napi_struct *napi = &tp->napi;
 u8 speed;

 speed = rtl8152_get_speed(tp);

 if (speed & LINK_STATUS) {
  if (!netif_carrier_ok(netdev)) {
   tp->rtl_ops.enable(tp);
   netif_stop_queue(netdev);
   napi_disable(napi);
   netif_carrier_on(netdev);
   rtl_start_rx(tp);
   clear_bit(RTL8152_SET_RX_MODE, &tp->flags);
   _rtl8152_set_rx_mode(netdev);
   napi_enable(&tp->napi);
   netif_wake_queue(netdev);
   netif_info(tp, link, netdev, "carrier on\n");
  } else if (netif_queue_stopped(netdev) &&
      skb_queue_len(&tp->tx_queue) < tp->tx_qlen) {
   netif_wake_queue(netdev);
  }
 } else {
  if (netif_carrier_ok(netdev)) {
   netif_carrier_off(netdev);
   tasklet_disable(&tp->tx_tl);
   napi_disable(napi);
   tp->rtl_ops.disable(tp);
   napi_enable(napi);
   tasklet_enable(&tp->tx_tl);
   netif_info(tp, link, netdev, "carrier off\n");
  }
 }
}
