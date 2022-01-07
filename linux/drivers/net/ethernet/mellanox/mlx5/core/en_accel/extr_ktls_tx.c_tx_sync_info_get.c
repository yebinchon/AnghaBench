
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tx_sync_info {int sync_len; int nr_frags; int * frags; int rcd_sn; } ;
struct tls_record_info {int * frags; } ;
struct tls_offload_context_tx {int lock; } ;
struct mlx5e_ktls_offload_context_tx {struct tls_offload_context_tx* tx_ctx; } ;
typedef int skb_frag_t ;
typedef enum mlx5e_ktls_sync_retval { ____Placeholder_mlx5e_ktls_sync_retval } mlx5e_ktls_sync_retval ;


 int MLX5E_KTLS_SYNC_DONE ;
 int MLX5E_KTLS_SYNC_FAIL ;
 int MLX5E_KTLS_SYNC_SKIP_NO_DATA ;
 int get_page (int ) ;
 int skb_frag_page (int *) ;
 scalar_t__ skb_frag_size (int *) ;
 int skb_frag_size_add (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tls_record_info* tls_get_record (struct tls_offload_context_tx*,scalar_t__,int *) ;
 scalar_t__ tls_record_is_start_marker (struct tls_record_info*) ;
 scalar_t__ tls_record_start_seq (struct tls_record_info*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static enum mlx5e_ktls_sync_retval
tx_sync_info_get(struct mlx5e_ktls_offload_context_tx *priv_tx,
   u32 tcp_seq, struct tx_sync_info *info)
{
 struct tls_offload_context_tx *tx_ctx = priv_tx->tx_ctx;
 enum mlx5e_ktls_sync_retval ret = MLX5E_KTLS_SYNC_DONE;
 struct tls_record_info *record;
 int remaining, i = 0;
 unsigned long flags;

 spin_lock_irqsave(&tx_ctx->lock, flags);
 record = tls_get_record(tx_ctx, tcp_seq, &info->rcd_sn);

 if (unlikely(!record)) {
  ret = MLX5E_KTLS_SYNC_FAIL;
  goto out;
 }

 if (unlikely(tcp_seq < tls_record_start_seq(record))) {
  ret = tls_record_is_start_marker(record) ?
   MLX5E_KTLS_SYNC_SKIP_NO_DATA : MLX5E_KTLS_SYNC_FAIL;
  goto out;
 }

 info->sync_len = tcp_seq - tls_record_start_seq(record);
 remaining = info->sync_len;
 while (remaining > 0) {
  skb_frag_t *frag = &record->frags[i];

  get_page(skb_frag_page(frag));
  remaining -= skb_frag_size(frag);
  info->frags[i++] = *frag;
 }

 if (remaining < 0)
  skb_frag_size_add(&info->frags[i - 1], remaining);
 info->nr_frags = i;
out:
 spin_unlock_irqrestore(&tx_ctx->lock, flags);
 return ret;
}
