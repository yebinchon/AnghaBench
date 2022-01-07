
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {TYPE_1__* ae_handle; } ;
struct ethtool_channels {int tx_count; int rx_count; int max_tx; int max_rx; } ;
struct TYPE_2__ {int q_num; } ;


 struct hns_nic_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
hns_get_channels(struct net_device *net_dev, struct ethtool_channels *ch)
{
 struct hns_nic_priv *priv = netdev_priv(net_dev);

 ch->max_rx = priv->ae_handle->q_num;
 ch->max_tx = priv->ae_handle->q_num;

 ch->rx_count = priv->ae_handle->q_num;
 ch->tx_count = priv->ae_handle->q_num;
}
