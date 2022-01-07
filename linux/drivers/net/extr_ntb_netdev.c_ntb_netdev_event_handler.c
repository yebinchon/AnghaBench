
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_netdev {int qp; } ;
struct net_device {int dummy; } ;


 int netdev_dbg (struct net_device*,char*,int,scalar_t__) ;
 struct ntb_netdev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ ntb_transport_link_query (int ) ;

__attribute__((used)) static void ntb_netdev_event_handler(void *data, int link_is_up)
{
 struct net_device *ndev = data;
 struct ntb_netdev *dev = netdev_priv(ndev);

 netdev_dbg(ndev, "Event %x, Link %x\n", link_is_up,
     ntb_transport_link_query(dev->qp));

 if (link_is_up) {
  if (ntb_transport_link_query(dev->qp))
   netif_carrier_on(ndev);
 } else {
  netif_carrier_off(ndev);
 }
}
