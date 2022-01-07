
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int real_num_tx_queues; } ;
struct TYPE_4__ {int num_tc; } ;
struct mlx5e_channels {int num; TYPE_2__ params; } ;
struct mlx5e_priv {TYPE_1__* profile; struct mlx5e_channels channels; struct net_device* netdev; } ;
typedef int (* mlx5e_fp_hw_modify ) (struct mlx5e_priv*) ;
struct TYPE_3__ {int (* update_rx ) (struct mlx5e_priv*) ;} ;


 int mlx5e_activate_priv_channels (struct mlx5e_priv*) ;
 int mlx5e_close_channels (struct mlx5e_channels*) ;
 int mlx5e_deactivate_priv_channels (struct mlx5e_priv*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_set_real_num_tx_queues (struct net_device*,int) ;
 int stub1 (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_switch_priv_channels(struct mlx5e_priv *priv,
           struct mlx5e_channels *new_chs,
           mlx5e_fp_hw_modify hw_modify)
{
 struct net_device *netdev = priv->netdev;
 int new_num_txqs;
 int carrier_ok;

 new_num_txqs = new_chs->num * new_chs->params.num_tc;

 carrier_ok = netif_carrier_ok(netdev);
 netif_carrier_off(netdev);

 if (new_num_txqs < netdev->real_num_tx_queues)
  netif_set_real_num_tx_queues(netdev, new_num_txqs);

 mlx5e_deactivate_priv_channels(priv);
 mlx5e_close_channels(&priv->channels);

 priv->channels = *new_chs;


 if (hw_modify)
  hw_modify(priv);

 priv->profile->update_rx(priv);
 mlx5e_activate_priv_channels(priv);


 if (carrier_ok)
  netif_carrier_on(netdev);
}
