
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct xfrm_offload {int status; int proto; int flags; } ;
struct sk_buff {int dummy; } ;
struct sec_path {int olen; int len; struct xfrm_state** xvec; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {TYPE_4__* ipsec; } ;
struct TYPE_5__ {int nexthdr; int sa_handle; } ;
struct TYPE_6__ {TYPE_1__ rx; } ;
struct mlx5e_ipsec_metadata {int syndrome; TYPE_2__ content; } ;
struct TYPE_7__ {int ipsec_rx_drop_syndrome; int ipsec_rx_drop_sadb_miss; int ipsec_rx_drop_sp_alloc; } ;
struct TYPE_8__ {TYPE_3__ sw_stats; int no_trailer; } ;


 int CRYPTO_DONE ;
 int CRYPTO_INVALID_PROTOCOL ;
 int CRYPTO_SUCCESS ;
 int CRYPTO_TUNNEL_ESP_AUTH_FAILED ;



 int XFRM_ESP_NO_TRAILER ;
 int atomic64_inc (int *) ;
 int be32_to_cpu (int ) ;
 int likely (int ) ;
 struct xfrm_state* mlx5e_ipsec_sadb_rx_lookup (TYPE_4__*,int ) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;
 struct sec_path* secpath_set (struct sk_buff*) ;
 struct sec_path* skb_sec_path (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_offload* xfrm_offload (struct sk_buff*) ;

__attribute__((used)) static inline struct xfrm_state *
mlx5e_ipsec_build_sp(struct net_device *netdev, struct sk_buff *skb,
       struct mlx5e_ipsec_metadata *mdata)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct xfrm_offload *xo;
 struct xfrm_state *xs;
 struct sec_path *sp;
 u32 sa_handle;

 sp = secpath_set(skb);
 if (unlikely(!sp)) {
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_rx_drop_sp_alloc);
  return ((void*)0);
 }

 sa_handle = be32_to_cpu(mdata->content.rx.sa_handle);
 xs = mlx5e_ipsec_sadb_rx_lookup(priv->ipsec, sa_handle);
 if (unlikely(!xs)) {
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_rx_drop_sadb_miss);
  return ((void*)0);
 }

 sp = skb_sec_path(skb);
 sp->xvec[sp->len++] = xs;
 sp->olen++;

 xo = xfrm_offload(skb);
 xo->flags = CRYPTO_DONE;
 switch (mdata->syndrome) {
 case 128:
  xo->status = CRYPTO_SUCCESS;
  if (likely(priv->ipsec->no_trailer)) {
   xo->flags |= XFRM_ESP_NO_TRAILER;
   xo->proto = mdata->content.rx.nexthdr;
  }
  break;
 case 130:
  xo->status = CRYPTO_TUNNEL_ESP_AUTH_FAILED;
  break;
 case 129:
  xo->status = CRYPTO_INVALID_PROTOCOL;
  break;
 default:
  atomic64_inc(&priv->ipsec->sw_stats.ipsec_rx_drop_syndrome);
  return ((void*)0);
 }
 return xs;
}
