
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct bnx2 {int tx_ring_size; int rx_ring_size; } ;


 int bnx2_change_ring_size (struct bnx2*,int ,int ,int) ;
 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnx2_change_mtu(struct net_device *dev, int new_mtu)
{
 struct bnx2 *bp = netdev_priv(dev);

 dev->mtu = new_mtu;
 return bnx2_change_ring_size(bp, bp->rx_ring_size, bp->tx_ring_size,
         0);
}
