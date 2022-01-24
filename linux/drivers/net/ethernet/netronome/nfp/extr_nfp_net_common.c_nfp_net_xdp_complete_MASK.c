#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nfp_net_tx_ring {int qcp_rd_p; int rd_p; scalar_t__ wr_p; scalar_t__ cnt; TYPE_1__* txbufs; int /*<<< orphan*/  qcp_q; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {int tx_pkts; int /*<<< orphan*/  tx_sync; int /*<<< orphan*/  tx_bytes; } ;
struct TYPE_2__ {int real_len; } ;

/* Variables and functions */
 void* FUNC0 (struct nfp_net_tx_ring*,int) ; 
 int NFP_NET_XDP_MAX_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct nfp_net_tx_ring *tx_ring)
{
	struct nfp_net_r_vector *r_vec = tx_ring->r_vec;
	u32 done_pkts = 0, done_bytes = 0;
	bool done_all;
	int idx, todo;
	u32 qcp_rd_p;

	/* Work out how many descriptors have been transmitted */
	qcp_rd_p = FUNC3(tx_ring->qcp_q);

	if (qcp_rd_p == tx_ring->qcp_rd_p)
		return true;

	todo = FUNC0(tx_ring, qcp_rd_p - tx_ring->qcp_rd_p);

	done_all = todo <= NFP_NET_XDP_MAX_COMPLETE;
	todo = FUNC2(todo, NFP_NET_XDP_MAX_COMPLETE);

	tx_ring->qcp_rd_p = FUNC0(tx_ring, tx_ring->qcp_rd_p + todo);

	done_pkts = todo;
	while (todo--) {
		idx = FUNC0(tx_ring, tx_ring->rd_p);
		tx_ring->rd_p++;

		done_bytes += tx_ring->txbufs[idx].real_len;
	}

	FUNC4(&r_vec->tx_sync);
	r_vec->tx_bytes += done_bytes;
	r_vec->tx_pkts += done_pkts;
	FUNC5(&r_vec->tx_sync);

	FUNC1(tx_ring->wr_p - tx_ring->rd_p > tx_ring->cnt,
		  "XDP TX ring corruption rd_p=%u wr_p=%u cnt=%u\n",
		  tx_ring->rd_p, tx_ring->wr_p, tx_ring->cnt);

	return done_all;
}