
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_enet_config {int wq_desc_count; int rq_desc_count; } ;
struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int tx_max_pending; int rx_pending; int rx_max_pending; } ;
struct enic {struct vnic_enet_config config; } ;


 int ENIC_MAX_RQ_DESCS ;
 int ENIC_MAX_WQ_DESCS ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void enic_get_ringparam(struct net_device *netdev,
          struct ethtool_ringparam *ring)
{
 struct enic *enic = netdev_priv(netdev);
 struct vnic_enet_config *c = &enic->config;

 ring->rx_max_pending = ENIC_MAX_RQ_DESCS;
 ring->rx_pending = c->rq_desc_count;
 ring->tx_max_pending = ENIC_MAX_WQ_DESCS;
 ring->tx_pending = c->wq_desc_count;
}
