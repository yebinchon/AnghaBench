
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int num_channels; } ;
struct TYPE_7__ {TYPE_2__ params; } ;
struct TYPE_5__ {scalar_t__ trust_state; } ;
struct mlx5e_priv {int** channel_tc2txq; TYPE_4__** txq2sq; TYPE_3__ channels; TYPE_1__ dcbx_dp; } ;
struct TYPE_8__ {int ch_ix; } ;


 scalar_t__ MLX5_QPTS_TRUST_DSCP ;
 int mlx5e_get_dscp_up (struct mlx5e_priv*,struct sk_buff*) ;
 int netdev_get_num_tc (struct net_device*) ;
 int netdev_pick_tx (struct net_device*,struct sk_buff*,int *) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int skb_vlan_tag_get_prio (struct sk_buff*) ;
 scalar_t__ skb_vlan_tag_present (struct sk_buff*) ;

u16 mlx5e_select_queue(struct net_device *dev, struct sk_buff *skb,
         struct net_device *sb_dev)
{
 int txq_ix = netdev_pick_tx(dev, skb, ((void*)0));
 struct mlx5e_priv *priv = netdev_priv(dev);
 u16 num_channels;
 int up = 0;

 if (!netdev_get_num_tc(dev))
  return txq_ix;






  if (skb_vlan_tag_present(skb))
   up = skb_vlan_tag_get_prio(skb);




 num_channels = priv->channels.params.num_channels;
 if (txq_ix >= num_channels)
  txq_ix = priv->txq2sq[txq_ix]->ch_ix;

 return priv->channel_tc2txq[txq_ix][up];
}
