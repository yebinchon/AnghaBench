#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tls_context {struct net_device* netdev; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {TYPE_1__* channel; } ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5e_tls_offload_context_tx {scalar_t__ expected_seq; int /*<<< orphan*/  swid; } ;
struct mlx5e_priv {TYPE_4__* tls; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_tls_drop_metadata; } ;
struct TYPE_8__ {TYPE_2__ sw_stats; } ;
struct TYPE_7__ {int /*<<< orphan*/  seq; } ;
struct TYPE_5__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct mlx5e_tls_offload_context_tx* FUNC3 (struct tls_context*) ; 
 struct sk_buff* FUNC4 (struct net_device*,struct mlx5e_txqsq*,struct sk_buff*,struct mlx5e_tx_wqe**,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (struct mlx5e_tls_offload_context_tx*,struct mlx5e_txqsq*,struct sk_buff*,struct mlx5e_tx_wqe**,int /*<<< orphan*/ *,TYPE_4__*) ; 
 struct mlx5e_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_3__* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  tls ; 
 struct tls_context* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

struct sk_buff *FUNC15(struct net_device *netdev,
					struct mlx5e_txqsq *sq,
					struct sk_buff *skb,
					struct mlx5e_tx_wqe **wqe,
					u16 *pi)
{
	struct mlx5e_priv *priv = FUNC7(netdev);
	struct mlx5e_tls_offload_context_tx *context;
	struct tls_context *tls_ctx;
	u32 expected_seq;
	int datalen;
	u32 skb_seq;

	if (FUNC0(sq->channel->mdev, tls)) {
		skb = FUNC4(netdev, sq, skb, wqe, pi);
		goto out;
	}

	if (!skb->sk || !FUNC13(skb->sk))
		goto out;

	datalen = skb->len - (FUNC9(skb) + FUNC11(skb));
	if (!datalen)
		goto out;

	tls_ctx = FUNC12(skb->sk);
	if (FUNC14(tls_ctx->netdev != netdev))
		goto out;

	skb_seq = FUNC8(FUNC10(skb)->seq);
	context = FUNC3(tls_ctx);
	expected_seq = context->expected_seq;

	if (FUNC14(expected_seq != skb_seq)) {
		skb = FUNC6(context, sq, skb, wqe, pi, priv->tls);
		goto out;
	}

	if (FUNC14(FUNC5(skb, context->swid))) {
		FUNC1(&priv->tls->sw_stats.tx_tls_drop_metadata);
		FUNC2(skb);
		skb = NULL;
		goto out;
	}

	context->expected_seq = skb_seq + datalen;
out:
	return skb;
}