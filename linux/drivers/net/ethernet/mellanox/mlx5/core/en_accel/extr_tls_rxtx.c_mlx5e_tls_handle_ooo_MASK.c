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
struct sync_info {int nr_frags; int /*<<< orphan*/  rcd_sn; scalar_t__ sync_len; int /*<<< orphan*/ * frags; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; } ;
struct mlx5e_txqsq {TYPE_2__* stats; } ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5e_tls_offload_context_tx {scalar_t__ expected_seq; int /*<<< orphan*/  swid; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_tls_drop_resync_alloc; int /*<<< orphan*/  tx_tls_drop_metadata; int /*<<< orphan*/  tx_tls_drop_bypass_required; int /*<<< orphan*/  tx_tls_drop_no_sync_data; } ;
struct mlx5e_tls {TYPE_1__ sw_stats; } ;
struct TYPE_8__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_7__ {int /*<<< orphan*/  seq; } ;
struct TYPE_6__ {int /*<<< orphan*/  tls_resync_bytes; int /*<<< orphan*/  tls_ooo; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct mlx5e_tx_wqe* FUNC5 (struct mlx5e_txqsq*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_txqsq*,struct sk_buff*,struct mlx5e_tx_wqe*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sk_buff*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mlx5e_tls_offload_context_tx*,scalar_t__,struct sync_info*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 TYPE_4__* FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 TYPE_3__* FUNC14 (struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC17(struct mlx5e_tls_offload_context_tx *context,
		     struct mlx5e_txqsq *sq, struct sk_buff *skb,
		     struct mlx5e_tx_wqe **wqe,
		     u16 *pi,
		     struct mlx5e_tls *tls)
{
	u32 tcp_seq = FUNC10(FUNC14(skb)->seq);
	struct sync_info info;
	struct sk_buff *nskb;
	int linear_len = 0;
	int headln;
	int i;

	sq->stats->tls_ooo++;

	if (FUNC9(context, tcp_seq, &info)) {
		/* We might get here if a retransmission reaches the driver
		 * after the relevant record is acked.
		 * It should be safe to drop the packet in this case
		 */
		FUNC1(&tls->sw_stats.tx_tls_drop_no_sync_data);
		goto err_out;
	}

	if (FUNC16(info.sync_len < 0)) {
		u32 payload;

		headln = FUNC13(skb) + FUNC15(skb);
		payload = skb->len - headln;
		if (FUNC4(payload <= -info.sync_len))
			/* SKB payload doesn't require offload
			 */
			return skb;

		FUNC1(&tls->sw_stats.tx_tls_drop_bypass_required);
		goto err_out;
	}

	if (FUNC16(FUNC7(skb, context->swid))) {
		FUNC1(&tls->sw_stats.tx_tls_drop_metadata);
		goto err_out;
	}

	headln = FUNC13(skb) + FUNC15(skb);
	linear_len += headln + sizeof(info.rcd_sn);
	nskb = FUNC0(linear_len, GFP_ATOMIC);
	if (FUNC16(!nskb)) {
		FUNC1(&tls->sw_stats.tx_tls_drop_resync_alloc);
		goto err_out;
	}

	context->expected_seq = tcp_seq + skb->len - headln;
	FUNC11(nskb, linear_len);
	for (i = 0; i < info.nr_frags; i++)
		FUNC12(nskb)->frags[i] = info.frags[i];

	FUNC12(nskb)->nr_frags = info.nr_frags;
	nskb->data_len = info.sync_len;
	nskb->len += info.sync_len;
	sq->stats->tls_resync_bytes += nskb->len;
	FUNC8(skb, nskb, tcp_seq, headln,
				    FUNC2(info.rcd_sn));
	FUNC6(sq, nskb, *wqe, *pi, true);
	*wqe = FUNC5(sq, sizeof(**wqe), pi);
	return skb;

err_out:
	FUNC3(skb);
	return NULL;
}