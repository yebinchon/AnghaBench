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
struct xdp_umem {int dummy; } ;
struct i40e_ring {int queue_index; TYPE_1__* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  af_xdp_zc_qps; scalar_t__ alloc_queue_pairs; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct xdp_umem* FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct xdp_umem *FUNC4(struct i40e_ring *ring)
{
	bool xdp_on = FUNC0(ring->vsi);
	int qid = ring->queue_index;

	if (FUNC1(ring))
		qid -= ring->vsi->alloc_queue_pairs;

	if (!xdp_on || !FUNC2(qid, ring->vsi->af_xdp_zc_qps))
		return NULL;

	return FUNC3(ring->vsi->netdev, qid);
}