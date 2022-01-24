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
typedef  int u32 ;
struct xdp_frame {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_ring {int /*<<< orphan*/  state; } ;
struct ixgbe_adapter {struct ixgbe_ring** xdp_ring; scalar_t__ xdp_prog; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENXIO ; 
 int IXGBE_XDP_TX ; 
 int XDP_XMIT_FLAGS_MASK ; 
 int XDP_XMIT_FLUSH ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_TX_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_ring*) ; 
 int FUNC1 (struct ixgbe_adapter*,struct xdp_frame*) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 
 size_t FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct xdp_frame*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, int n,
			  struct xdp_frame **frames, u32 flags)
{
	struct ixgbe_adapter *adapter = FUNC2(dev);
	struct ixgbe_ring *ring;
	int drops = 0;
	int i;

	if (FUNC5(FUNC4(__IXGBE_DOWN, &adapter->state)))
		return -ENETDOWN;

	if (FUNC5(flags & ~XDP_XMIT_FLAGS_MASK))
		return -EINVAL;

	/* During program transitions its possible adapter->xdp_prog is assigned
	 * but ring has not been configured yet. In this case simply abort xmit.
	 */
	ring = adapter->xdp_prog ? adapter->xdp_ring[FUNC3()] : NULL;
	if (FUNC5(!ring))
		return -ENXIO;

	if (FUNC5(FUNC4(__IXGBE_TX_DISABLED, &ring->state)))
		return -ENXIO;

	for (i = 0; i < n; i++) {
		struct xdp_frame *xdpf = frames[i];
		int err;

		err = FUNC1(adapter, xdpf);
		if (err != IXGBE_XDP_TX) {
			FUNC6(xdpf);
			drops++;
		}
	}

	if (FUNC5(flags & XDP_XMIT_FLUSH))
		FUNC0(ring);

	return n - drops;
}