
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct bnxt {int dummy; } ;


 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 int bnxt_set_ring_params (struct bnxt*) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int bnxt_change_mtu(struct net_device *dev, int new_mtu)
{
 struct bnxt *bp = netdev_priv(dev);

 if (netif_running(dev))
  bnxt_close_nic(bp, 0, 0);

 dev->mtu = new_mtu;
 bnxt_set_ring_params(bp);

 if (netif_running(dev))
  return bnxt_open_nic(bp, 0, 0);

 return 0;
}
