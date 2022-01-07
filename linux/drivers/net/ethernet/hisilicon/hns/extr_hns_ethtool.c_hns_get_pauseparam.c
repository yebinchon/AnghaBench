
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_2__* ae_handle; } ;
struct hnae_ae_ops {int (* get_pauseparam ) (TYPE_2__*,int *,int *,int *) ;} ;
struct ethtool_pauseparam {int tx_pause; int rx_pause; int autoneg; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;


 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int stub1 (TYPE_2__*,int *,int *,int *) ;

__attribute__((used)) static void hns_get_pauseparam(struct net_device *net_dev,
          struct ethtool_pauseparam *param)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);
 struct hnae_ae_ops *ops;

 ops = priv->ae_handle->dev->ops;

 if (ops->get_pauseparam)
  ops->get_pauseparam(priv->ae_handle, &param->autoneg,
         &param->rx_pause, &param->tx_pause);
}
