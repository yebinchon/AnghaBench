
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {struct hnae_handle* ae_handle; } ;
struct hnae_handle {TYPE_1__* dev; } ;
struct hnae_ae_ops {int (* set_pauseparam ) (struct hnae_handle*,int ,int ,int ) ;} ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct TYPE_2__ {struct hnae_ae_ops* ops; } ;


 int ESRCH ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct hnae_handle*,int ,int ,int ) ;

__attribute__((used)) static int hns_set_pauseparam(struct net_device *net_dev,
         struct ethtool_pauseparam *param)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);
 struct hnae_handle *h;
 struct hnae_ae_ops *ops;

 h = priv->ae_handle;
 ops = h->dev->ops;

 if (!ops->set_pauseparam)
  return -ESRCH;

 return ops->set_pauseparam(priv->ae_handle, param->autoneg,
       param->rx_pause, param->tx_pause);
}
