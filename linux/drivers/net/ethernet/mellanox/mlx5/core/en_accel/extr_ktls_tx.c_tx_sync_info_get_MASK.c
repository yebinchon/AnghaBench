#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tx_sync_info {int sync_len; int nr_frags; int /*<<< orphan*/ * frags; int /*<<< orphan*/  rcd_sn; } ;
struct tls_record_info {int /*<<< orphan*/ * frags; } ;
struct tls_offload_context_tx {int /*<<< orphan*/  lock; } ;
struct mlx5e_ktls_offload_context_tx {struct tls_offload_context_tx* tx_ctx; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  enum mlx5e_ktls_sync_retval { ____Placeholder_mlx5e_ktls_sync_retval } mlx5e_ktls_sync_retval ;

/* Variables and functions */
 int MLX5E_KTLS_SYNC_DONE ; 
 int MLX5E_KTLS_SYNC_FAIL ; 
 int MLX5E_KTLS_SYNC_SKIP_NO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tls_record_info* FUNC6 (struct tls_offload_context_tx*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tls_record_info*) ; 
 scalar_t__ FUNC8 (struct tls_record_info*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static enum mlx5e_ktls_sync_retval
FUNC10(struct mlx5e_ktls_offload_context_tx *priv_tx,
		 u32 tcp_seq, struct tx_sync_info *info)
{
	struct tls_offload_context_tx *tx_ctx = priv_tx->tx_ctx;
	enum mlx5e_ktls_sync_retval ret = MLX5E_KTLS_SYNC_DONE;
	struct tls_record_info *record;
	int remaining, i = 0;
	unsigned long flags;

	FUNC4(&tx_ctx->lock, flags);
	record = FUNC6(tx_ctx, tcp_seq, &info->rcd_sn);

	if (FUNC9(!record)) {
		ret = MLX5E_KTLS_SYNC_FAIL;
		goto out;
	}

	if (FUNC9(tcp_seq < FUNC8(record))) {
		ret = FUNC7(record) ?
			MLX5E_KTLS_SYNC_SKIP_NO_DATA : MLX5E_KTLS_SYNC_FAIL;
		goto out;
	}

	info->sync_len = tcp_seq - FUNC8(record);
	remaining = info->sync_len;
	while (remaining > 0) {
		skb_frag_t *frag = &record->frags[i];

		FUNC0(FUNC1(frag));
		remaining -= FUNC2(frag);
		info->frags[i++] = *frag;
	}
	/* reduce the part which will be sent with the original SKB */
	if (remaining < 0)
		FUNC3(&info->frags[i - 1], remaining);
	info->nr_frags = i;
out:
	FUNC5(&tx_ctx->lock, flags);
	return ret;
}