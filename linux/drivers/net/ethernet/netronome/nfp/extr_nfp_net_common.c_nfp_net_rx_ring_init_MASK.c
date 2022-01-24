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
struct nfp_net_rx_ring {unsigned int idx; int fl_qcidx; scalar_t__ qcp_fl; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {int /*<<< orphan*/  rx_sync; struct nfp_net* nfp_net; } ;
struct nfp_net {int stride_rx; scalar_t__ rx_bar; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nfp_net_rx_ring *rx_ring,
		     struct nfp_net_r_vector *r_vec, unsigned int idx)
{
	struct nfp_net *nn = r_vec->nfp_net;

	rx_ring->idx = idx;
	rx_ring->r_vec = r_vec;
	FUNC1(&rx_ring->r_vec->rx_sync);

	rx_ring->fl_qcidx = rx_ring->idx * nn->stride_rx;
	rx_ring->qcp_fl = nn->rx_bar + FUNC0(rx_ring->fl_qcidx);
}