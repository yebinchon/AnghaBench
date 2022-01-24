#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tls_context {struct net_device* netdev; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {struct mlx5e_sq_stats* stats; } ;
struct mlx5_wqe_ctrl_seg {int /*<<< orphan*/  tisn; } ;
struct mlx5e_tx_wqe {struct mlx5_wqe_ctrl_seg ctrl; } ;
struct mlx5e_sq_stats {int tls_encrypted_packets; int tls_encrypted_bytes; int /*<<< orphan*/  tls_ctx; } ;
struct mlx5e_ktls_offload_context_tx {scalar_t__ expected_seq; int tisn; } ;
typedef  enum mlx5e_ktls_sync_retval { ____Placeholder_mlx5e_ktls_sync_retval } mlx5e_ktls_sync_retval ;
struct TYPE_4__ {int gso_segs; } ;
struct TYPE_3__ {int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int MLX5E_KTLS_SYNC_DONE ; 
 int MLX5E_KTLS_SYNC_FAIL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct mlx5e_ktls_offload_context_tx* FUNC4 (struct tls_context*) ; 
 int FUNC5 (struct mlx5e_ktls_offload_context_tx*,struct mlx5e_txqsq*,int,scalar_t__) ; 
 int FUNC6 (struct mlx5e_ktls_offload_context_tx*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_txqsq*,struct mlx5e_ktls_offload_context_tx*,int,int) ; 
 struct mlx5e_tx_wqe* FUNC8 (struct mlx5e_txqsq*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct sk_buff*) ; 
 struct tls_context* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

struct sk_buff *FUNC18(struct net_device *netdev,
					 struct mlx5e_txqsq *sq,
					 struct sk_buff *skb,
					 struct mlx5e_tx_wqe **wqe, u16 *pi)
{
	struct mlx5e_ktls_offload_context_tx *priv_tx;
	struct mlx5e_sq_stats *stats = sq->stats;
	struct mlx5_wqe_ctrl_seg *cseg;
	struct tls_context *tls_ctx;
	int datalen;
	u32 seq;

	if (!skb->sk || !FUNC16(skb->sk))
		goto out;

	datalen = skb->len - (FUNC12(skb) + FUNC14(skb));
	if (!datalen)
		goto out;

	tls_ctx = FUNC15(skb->sk);
	if (FUNC0(tls_ctx->netdev != netdev))
		goto err_out;

	priv_tx = FUNC4(tls_ctx);

	if (FUNC17(FUNC6(priv_tx))) {
		FUNC7(sq, priv_tx, false, false);
		*wqe = FUNC8(sq, sizeof(**wqe), pi);
		stats->tls_ctx++;
	}

	seq = FUNC9(FUNC13(skb)->seq);
	if (FUNC17(priv_tx->expected_seq != seq)) {
		enum mlx5e_ktls_sync_retval ret =
			FUNC5(priv_tx, sq, datalen, seq);

		if (FUNC3(ret == MLX5E_KTLS_SYNC_DONE))
			*wqe = FUNC8(sq, sizeof(**wqe), pi);
		else if (ret == MLX5E_KTLS_SYNC_FAIL)
			goto err_out;
		else /* ret == MLX5E_KTLS_SYNC_SKIP_NO_DATA */
			goto out;
	}

	priv_tx->expected_seq = seq + datalen;

	cseg = &(*wqe)->ctrl;
	cseg->tisn = FUNC1(priv_tx->tisn << 8);

	stats->tls_encrypted_packets += FUNC10(skb) ? FUNC11(skb)->gso_segs : 1;
	stats->tls_encrypted_bytes   += datalen;

out:
	return skb;

err_out:
	FUNC2(skb);
	return NULL;
}