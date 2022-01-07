
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int tx_coalesce_usecs; int tx_max_coalesced_frames; int rx_coalesce_usecs; int rx_max_coalesced_frames; int use_adaptive_rx_coalesce; } ;
struct TYPE_2__ {int use_dim; } ;
struct bcm_sysport_priv {TYPE_1__ dim; } ;


 int RDMA_INTR_THRESH_MASK ;
 int RDMA_MBDONE_INTR ;
 int RDMA_TIMEOUT_SHIFT ;
 int RING_INTR_THRESH_MASK ;
 int RING_TIMEOUT_SHIFT ;
 int TDMA_DESC_RING_INTR_CONTROL (int ) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int rdma_readl (struct bcm_sysport_priv*,int ) ;
 int tdma_readl (struct bcm_sysport_priv*,int ) ;

__attribute__((used)) static int bcm_sysport_get_coalesce(struct net_device *dev,
        struct ethtool_coalesce *ec)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);
 u32 reg;

 reg = tdma_readl(priv, TDMA_DESC_RING_INTR_CONTROL(0));

 ec->tx_coalesce_usecs = (reg >> RING_TIMEOUT_SHIFT) * 8192 / 1000;
 ec->tx_max_coalesced_frames = reg & RING_INTR_THRESH_MASK;

 reg = rdma_readl(priv, RDMA_MBDONE_INTR);

 ec->rx_coalesce_usecs = (reg >> RDMA_TIMEOUT_SHIFT) * 8192 / 1000;
 ec->rx_max_coalesced_frames = reg & RDMA_INTR_THRESH_MASK;
 ec->use_adaptive_rx_coalesce = priv->dim.use_dim;

 return 0;
}
