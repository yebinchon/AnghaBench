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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int pc; int sqn; int /*<<< orphan*/  uar_map; int /*<<< orphan*/  txq; TYPE_1__* stats; int /*<<< orphan*/  stop_room; int /*<<< orphan*/  cc; struct mlx5_wq_cyc wq; } ;
struct mlx5e_tx_wqe_info {int num_dma; int num_wqebbs; struct sk_buff* skb; int /*<<< orphan*/  num_bytes; } ;
struct mlx5_wqe_ctrl_seg {void* qpn_ds; void* opmod_idx_opcode; } ;
struct TYPE_4__ {int tx_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  stopped; } ;

/* Variables and functions */
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_wq_cyc*,int,int /*<<< orphan*/ ,struct mlx5_wqe_ctrl_seg*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline void
FUNC7(struct mlx5e_txqsq *sq, struct sk_buff *skb,
		     u8 opcode, u16 ds_cnt, u8 num_wqebbs, u32 num_bytes, u8 num_dma,
		     struct mlx5e_tx_wqe_info *wi, struct mlx5_wqe_ctrl_seg *cseg,
		     bool xmit_more)
{
	struct mlx5_wq_cyc *wq = &sq->wq;
	bool send_doorbell;

	wi->num_bytes = num_bytes;
	wi->num_dma = num_dma;
	wi->num_wqebbs = num_wqebbs;
	wi->skb = skb;

	cseg->opmod_idx_opcode = FUNC1((sq->pc << 8) | opcode);
	cseg->qpn_ds           = FUNC1((sq->sqn << 8) | ds_cnt);

	if (FUNC6(FUNC5(skb)->tx_flags & SKBTX_HW_TSTAMP))
		FUNC5(skb)->tx_flags |= SKBTX_IN_PROGRESS;

	sq->pc += wi->num_wqebbs;
	if (FUNC6(!FUNC3(wq, sq->cc, sq->pc, sq->stop_room))) {
		FUNC4(sq->txq);
		sq->stats->stopped++;
	}

	send_doorbell = FUNC0(sq->txq, num_bytes,
					       xmit_more);
	if (send_doorbell)
		FUNC2(wq, sq->pc, sq->uar_map, cseg);
}