
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {TYPE_2__* sq; TYPE_1__* rq; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {void* tx_max_pending; void* tx_pending; void* rx_max_pending; void* rx_pending; } ;
struct TYPE_4__ {int vq; } ;
struct TYPE_3__ {int vq; } ;


 struct virtnet_info* netdev_priv (struct net_device*) ;
 void* virtqueue_get_vring_size (int ) ;

__attribute__((used)) static void virtnet_get_ringparam(struct net_device *dev,
    struct ethtool_ringparam *ring)
{
 struct virtnet_info *vi = netdev_priv(dev);

 ring->rx_max_pending = virtqueue_get_vring_size(vi->rq[0].vq);
 ring->tx_max_pending = virtqueue_get_vring_size(vi->sq[0].vq);
 ring->rx_pending = ring->rx_max_pending;
 ring->tx_pending = ring->tx_max_pending;
}
