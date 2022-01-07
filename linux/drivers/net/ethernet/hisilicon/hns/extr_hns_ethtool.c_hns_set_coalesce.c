
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; } ;
struct hnae_ae_ops {int (* set_coalesce_usecs ) (TYPE_2__*,int ) ;int (* set_coalesce_frames ) (TYPE_2__*,int ,int ) ;} ;
struct ethtool_coalesce {scalar_t__ use_adaptive_rx_coalesce; int rx_max_coalesced_frames; int tx_max_coalesced_frames; int rx_coalesce_usecs; int tx_coalesce_usecs; } ;
struct TYPE_5__ {scalar_t__ coal_adapt_en; TYPE_1__* dev; } ;
struct TYPE_4__ {struct hnae_ae_ops* ops; } ;


 int EINVAL ;
 int ESRCH ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int hns_set_coalesce(struct net_device *net_dev,
       struct ethtool_coalesce *ec)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);
 struct hnae_ae_ops *ops;
 int rc1, rc2;

 ops = priv->ae_handle->dev->ops;

 if (ec->tx_coalesce_usecs != ec->rx_coalesce_usecs)
  return -EINVAL;

 if ((!ops->set_coalesce_usecs) ||
     (!ops->set_coalesce_frames))
  return -ESRCH;

 if (ec->use_adaptive_rx_coalesce != priv->ae_handle->coal_adapt_en)
  priv->ae_handle->coal_adapt_en = ec->use_adaptive_rx_coalesce;

 rc1 = ops->set_coalesce_usecs(priv->ae_handle,
          ec->rx_coalesce_usecs);

 rc2 = ops->set_coalesce_frames(priv->ae_handle,
           ec->tx_max_coalesced_frames,
           ec->rx_max_coalesced_frames);

 if (rc1 || rc2)
  return -EINVAL;

 return 0;
}
