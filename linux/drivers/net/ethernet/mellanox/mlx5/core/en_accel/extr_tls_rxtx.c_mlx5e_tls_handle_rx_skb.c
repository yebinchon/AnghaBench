
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int decrypted; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int syndrome; } ;
struct TYPE_5__ {TYPE_4__ recv; } ;
struct mlx5e_tls_metadata {TYPE_1__ content; } ;
struct mlx5e_priv {TYPE_3__* tls; } ;
struct TYPE_6__ {int rx_tls_auth_fail; int rx_tls_resync_request; } ;
struct TYPE_7__ {TYPE_2__ sw_stats; } ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ MLX5E_METADATA_ETHER_LEN ;



 int atomic64_inc (int *) ;
 int is_metadata_hdr_valid (struct sk_buff*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 int remove_metadata_hdr (struct sk_buff*) ;
 int tls_update_resync_sn (struct net_device*,struct sk_buff*,struct mlx5e_tls_metadata*) ;

void mlx5e_tls_handle_rx_skb(struct net_device *netdev, struct sk_buff *skb,
        u32 *cqe_bcnt)
{
 struct mlx5e_tls_metadata *mdata;
 struct mlx5e_priv *priv;

 if (!is_metadata_hdr_valid(skb))
  return;


 mdata = (struct mlx5e_tls_metadata *)(skb->data + ETH_HLEN);
 switch (mdata->content.recv.syndrome) {
 case 129:
  skb->decrypted = 1;
  break;
 case 128:
  tls_update_resync_sn(netdev, skb, mdata);
  priv = netdev_priv(netdev);
  atomic64_inc(&priv->tls->sw_stats.rx_tls_resync_request);
  break;
 case 130:

  priv = netdev_priv(netdev);
  atomic64_inc(&priv->tls->sw_stats.rx_tls_auth_fail);
  break;
 default:

  return;
 }

 remove_metadata_hdr(skb);
 *cqe_bcnt -= MLX5E_METADATA_ETHER_LEN;
}
