
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int ASSERT_RTNL () ;
 int enic_open (struct net_device*) ;
 int enic_stop (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int _enic_change_mtu(struct net_device *netdev, int new_mtu)
{
 bool running = netif_running(netdev);
 int err = 0;

 ASSERT_RTNL();
 if (running) {
  err = enic_stop(netdev);
  if (err)
   return err;
 }

 netdev->mtu = new_mtu;

 if (running) {
  err = enic_open(netdev);
  if (err)
   return err;
 }

 return 0;
}
