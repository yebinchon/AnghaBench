
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct sync_info {int nr_frags; int rcd_sn; scalar_t__ sync_len; int * frags; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; } ;
struct mlx5e_txqsq {TYPE_2__* stats; } ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5e_tls_offload_context_tx {scalar_t__ expected_seq; int swid; } ;
struct TYPE_5__ {int tx_tls_drop_resync_alloc; int tx_tls_drop_metadata; int tx_tls_drop_bypass_required; int tx_tls_drop_no_sync_data; } ;
struct mlx5e_tls {TYPE_1__ sw_stats; } ;
struct TYPE_8__ {int nr_frags; int * frags; } ;
struct TYPE_7__ {int seq; } ;
struct TYPE_6__ {int tls_resync_bytes; int tls_ooo; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atomic64_inc (int *) ;
 int cpu_to_be64 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 struct mlx5e_tx_wqe* mlx5e_sq_fetch_wqe (struct mlx5e_txqsq*,int,int *) ;
 int mlx5e_sq_xmit (struct mlx5e_txqsq*,struct sk_buff*,struct mlx5e_tx_wqe*,int ,int) ;
 int mlx5e_tls_add_metadata (struct sk_buff*,int ) ;
 int mlx5e_tls_complete_sync_skb (struct sk_buff*,struct sk_buff*,scalar_t__,int,int ) ;
 scalar_t__ mlx5e_tls_get_sync_data (struct mlx5e_tls_offload_context_tx*,scalar_t__,struct sync_info*) ;
 scalar_t__ ntohl (int ) ;
 int skb_put (struct sk_buff*,int) ;
 TYPE_4__* skb_shinfo (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 TYPE_3__* tcp_hdr (struct sk_buff*) ;
 int tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *
mlx5e_tls_handle_ooo(struct mlx5e_tls_offload_context_tx *context,
       struct mlx5e_txqsq *sq, struct sk_buff *skb,
       struct mlx5e_tx_wqe **wqe,
       u16 *pi,
       struct mlx5e_tls *tls)
{
 u32 tcp_seq = ntohl(tcp_hdr(skb)->seq);
 struct sync_info info;
 struct sk_buff *nskb;
 int linear_len = 0;
 int headln;
 int i;

 sq->stats->tls_ooo++;

 if (mlx5e_tls_get_sync_data(context, tcp_seq, &info)) {




  atomic64_inc(&tls->sw_stats.tx_tls_drop_no_sync_data);
  goto err_out;
 }

 if (unlikely(info.sync_len < 0)) {
  u32 payload;

  headln = skb_transport_offset(skb) + tcp_hdrlen(skb);
  payload = skb->len - headln;
  if (likely(payload <= -info.sync_len))


   return skb;

  atomic64_inc(&tls->sw_stats.tx_tls_drop_bypass_required);
  goto err_out;
 }

 if (unlikely(mlx5e_tls_add_metadata(skb, context->swid))) {
  atomic64_inc(&tls->sw_stats.tx_tls_drop_metadata);
  goto err_out;
 }

 headln = skb_transport_offset(skb) + tcp_hdrlen(skb);
 linear_len += headln + sizeof(info.rcd_sn);
 nskb = alloc_skb(linear_len, GFP_ATOMIC);
 if (unlikely(!nskb)) {
  atomic64_inc(&tls->sw_stats.tx_tls_drop_resync_alloc);
  goto err_out;
 }

 context->expected_seq = tcp_seq + skb->len - headln;
 skb_put(nskb, linear_len);
 for (i = 0; i < info.nr_frags; i++)
  skb_shinfo(nskb)->frags[i] = info.frags[i];

 skb_shinfo(nskb)->nr_frags = info.nr_frags;
 nskb->data_len = info.sync_len;
 nskb->len += info.sync_len;
 sq->stats->tls_resync_bytes += nskb->len;
 mlx5e_tls_complete_sync_skb(skb, nskb, tcp_seq, headln,
        cpu_to_be64(info.rcd_sn));
 mlx5e_sq_xmit(sq, nskb, *wqe, *pi, 1);
 *wqe = mlx5e_sq_fetch_wqe(sq, sizeof(**wqe), pi);
 return skb;

err_out:
 dev_kfree_skb_any(skb);
 return ((void*)0);
}
