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
struct xdp_umem {int dummy; } ;
struct ixgbe_ring {int ring_idx; } ;
struct ixgbe_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  af_xdp_zc_qps; int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct xdp_umem* FUNC2 (int /*<<< orphan*/ ,int) ; 

struct xdp_umem *FUNC3(struct ixgbe_adapter *adapter,
				struct ixgbe_ring *ring)
{
	bool xdp_on = FUNC0(adapter->xdp_prog);
	int qid = ring->ring_idx;

	if (!xdp_on || !FUNC1(qid, adapter->af_xdp_zc_qps))
		return NULL;

	return FUNC2(adapter->netdev, qid);
}