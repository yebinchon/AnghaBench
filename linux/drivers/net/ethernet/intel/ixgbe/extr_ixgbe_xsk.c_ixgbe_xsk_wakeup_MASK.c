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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct net_device {int dummy; } ;
struct ixgbe_ring {TYPE_1__* q_vector; int /*<<< orphan*/  xsk_umem; } ;
struct ixgbe_adapter {size_t num_xdp_queues; struct ixgbe_ring** xdp_ring; int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_idx; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENETDOWN ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ixgbe_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev, u32 qid, u32 flags)
{
	struct ixgbe_adapter *adapter = FUNC4(dev);
	struct ixgbe_ring *ring;

	if (FUNC5(__IXGBE_DOWN, &adapter->state))
		return -ENETDOWN;

	if (!FUNC1(adapter->xdp_prog))
		return -ENXIO;

	if (qid >= adapter->num_xdp_queues)
		return -ENXIO;

	if (!adapter->xdp_ring[qid]->xsk_umem)
		return -ENXIO;

	ring = adapter->xdp_ring[qid];
	if (!FUNC3(&ring->q_vector->napi)) {
		u64 eics = FUNC0(ring->q_vector->v_idx);

		FUNC2(adapter, eics);
	}

	return 0;
}