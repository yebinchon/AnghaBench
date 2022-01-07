
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int intf; } ;
struct net_device {int dummy; } ;


 struct r8152* netdev_priv (struct net_device*) ;
 int netif_warn (struct r8152*,int ,struct net_device*,char*) ;
 int tx_err ;
 int usb_queue_reset_device (int ) ;

__attribute__((used)) static void rtl8152_tx_timeout(struct net_device *netdev)
{
 struct r8152 *tp = netdev_priv(netdev);

 netif_warn(tp, tx_err, netdev, "Tx timeout\n");

 usb_queue_reset_device(tp->intf);
}
