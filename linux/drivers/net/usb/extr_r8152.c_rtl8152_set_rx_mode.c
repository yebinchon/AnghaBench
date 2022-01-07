
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int schedule; int flags; } ;
struct net_device {int dummy; } ;


 int RTL8152_SET_RX_MODE ;
 struct r8152* netdev_priv (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rtl8152_set_rx_mode(struct net_device *netdev)
{
 struct r8152 *tp = netdev_priv(netdev);

 if (netif_carrier_ok(netdev)) {
  set_bit(RTL8152_SET_RX_MODE, &tp->flags);
  schedule_delayed_work(&tp->schedule, 0);
 }
}
