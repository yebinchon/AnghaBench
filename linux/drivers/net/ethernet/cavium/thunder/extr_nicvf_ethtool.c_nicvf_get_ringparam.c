
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int sq_len; int cq_len; } ;
struct nicvf {struct queue_set* qs; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int tx_max_pending; int rx_pending; int rx_max_pending; } ;


 int MAX_CMP_QUEUE_LEN ;
 int MAX_SND_QUEUE_LEN ;
 struct nicvf* netdev_priv (struct net_device*) ;

__attribute__((used)) static void nicvf_get_ringparam(struct net_device *netdev,
    struct ethtool_ringparam *ring)
{
 struct nicvf *nic = netdev_priv(netdev);
 struct queue_set *qs = nic->qs;

 ring->rx_max_pending = MAX_CMP_QUEUE_LEN;
 ring->rx_pending = qs->cq_len;
 ring->tx_max_pending = MAX_SND_QUEUE_LEN;
 ring->tx_pending = qs->sq_len;
}
