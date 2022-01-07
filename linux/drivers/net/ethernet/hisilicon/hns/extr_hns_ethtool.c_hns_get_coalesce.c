
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; } ;
struct hnae_ae_ops {int (* get_coalesce_range ) (TYPE_2__*,int *,int *,int *,int *,int *,int *,int *,int *) ;int (* get_max_coalesced_frames ) (TYPE_2__*,int *,int *) ;int (* get_coalesce_usecs ) (TYPE_2__*,int *,int *) ;} ;
struct ethtool_coalesce {int rx_coalesce_usecs_high; int tx_coalesce_usecs_high; int rx_coalesce_usecs_low; int tx_coalesce_usecs_low; int rx_max_coalesced_frames_high; int tx_max_coalesced_frames_high; int rx_max_coalesced_frames_low; int tx_max_coalesced_frames_low; int rx_max_coalesced_frames; int tx_max_coalesced_frames; int rx_coalesce_usecs; int tx_coalesce_usecs; int use_adaptive_tx_coalesce; int use_adaptive_rx_coalesce; } ;
struct TYPE_6__ {int coal_adapt_en; TYPE_1__* dev; } ;
struct TYPE_5__ {struct hnae_ae_ops* ops; } ;


 int ESRCH ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_2__*,int *,int *) ;
 int stub2 (TYPE_2__*,int *,int *) ;
 int stub3 (TYPE_2__*,int *,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int hns_get_coalesce(struct net_device *net_dev,
       struct ethtool_coalesce *ec)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);
 struct hnae_ae_ops *ops;

 ops = priv->ae_handle->dev->ops;

 ec->use_adaptive_rx_coalesce = priv->ae_handle->coal_adapt_en;
 ec->use_adaptive_tx_coalesce = priv->ae_handle->coal_adapt_en;

 if ((!ops->get_coalesce_usecs) ||
     (!ops->get_max_coalesced_frames))
  return -ESRCH;

 ops->get_coalesce_usecs(priv->ae_handle,
     &ec->tx_coalesce_usecs,
     &ec->rx_coalesce_usecs);

 ops->get_max_coalesced_frames(
  priv->ae_handle,
  &ec->tx_max_coalesced_frames,
  &ec->rx_max_coalesced_frames);

 ops->get_coalesce_range(priv->ae_handle,
    &ec->tx_max_coalesced_frames_low,
    &ec->rx_max_coalesced_frames_low,
    &ec->tx_max_coalesced_frames_high,
    &ec->rx_max_coalesced_frames_high,
    &ec->tx_coalesce_usecs_low,
    &ec->rx_coalesce_usecs_low,
    &ec->tx_coalesce_usecs_high,
    &ec->rx_coalesce_usecs_high);

 return 0;
}
