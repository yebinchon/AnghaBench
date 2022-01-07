
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx4_en_priv {int adaptive_rx_coal; int sample_interval; int rx_usecs_high; int pkt_rate_high; int rx_usecs_low; int pkt_rate_low; int rx_frames; int rx_usecs; int tx_work_limit; int tx_frames; int tx_usecs; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; int rate_sample_interval; int rx_coalesce_usecs_high; int pkt_rate_high; int rx_coalesce_usecs_low; int pkt_rate_low; int rx_max_coalesced_frames; int rx_coalesce_usecs; int tx_max_coalesced_frames_irq; int tx_max_coalesced_frames; int tx_coalesce_usecs; } ;


 struct mlx4_en_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx4_en_get_coalesce(struct net_device *dev,
         struct ethtool_coalesce *coal)
{
 struct mlx4_en_priv *priv = netdev_priv(dev);

 coal->tx_coalesce_usecs = priv->tx_usecs;
 coal->tx_max_coalesced_frames = priv->tx_frames;
 coal->tx_max_coalesced_frames_irq = priv->tx_work_limit;

 coal->rx_coalesce_usecs = priv->rx_usecs;
 coal->rx_max_coalesced_frames = priv->rx_frames;

 coal->pkt_rate_low = priv->pkt_rate_low;
 coal->rx_coalesce_usecs_low = priv->rx_usecs_low;
 coal->pkt_rate_high = priv->pkt_rate_high;
 coal->rx_coalesce_usecs_high = priv->rx_usecs_high;
 coal->rate_sample_interval = priv->sample_interval;
 coal->use_adaptive_rx_coalesce = priv->adaptive_rx_coal;

 return 0;
}
