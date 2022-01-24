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
struct nfp_net_tx_ring {unsigned int idx; int is_xdp; int qcidx; scalar_t__ qcp_q; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  tx_sync; struct nfp_net* nfp_net; } ;
struct nfp_net {int stride_tx; scalar_t__ tx_bar; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nfp_net_tx_ring *tx_ring,
		     struct nfp_net_r_vector *r_vec, unsigned int idx,
		     bool is_xdp)
{
	struct nfp_net *nn = r_vec->nfp_net;

	tx_ring->idx = idx;
	tx_ring->r_vec = r_vec;
	tx_ring->is_xdp = is_xdp;
	FUNC1(&tx_ring->r_vec->tx_sync);

	tx_ring->qcidx = tx_ring->idx * nn->stride_tx;
	tx_ring->qcp_q = nn->tx_bar + FUNC0(tx_ring->qcidx);
}