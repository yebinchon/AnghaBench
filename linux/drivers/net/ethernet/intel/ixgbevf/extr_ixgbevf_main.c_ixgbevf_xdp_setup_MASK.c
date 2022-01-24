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
struct net_device {int mtu; } ;
struct ixgbevf_ring {struct bpf_prog* xdp_prog; } ;
struct ixgbevf_adapter {int num_rx_queues; struct bpf_prog* xdp_prog; struct ixgbevf_ring** rx_ring; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ixgbevf_ring*) ; 
 struct ixgbevf_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 struct bpf_prog* FUNC8 (struct bpf_prog**,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct bpf_prog *prog)
{
	int i, frame_size = dev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
	struct ixgbevf_adapter *adapter = FUNC6(dev);
	struct bpf_prog *old_prog;

	/* verify ixgbevf ring attributes are sufficient for XDP */
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct ixgbevf_ring *ring = adapter->rx_ring[i];

		if (frame_size > FUNC5(ring))
			return -EINVAL;
	}

	old_prog = FUNC8(&adapter->xdp_prog, prog);

	/* If transitioning XDP modes reconfigure rings */
	if (!!prog != !!old_prog) {
		/* Hardware has to reinitialize queues and interrupts to
		 * match packet buffer alignment. Unfortunately, the
		 * hardware is not flexible enough to do this dynamically.
		 */
		if (FUNC7(dev))
			FUNC2(dev);

		FUNC1(adapter);
		FUNC3(adapter);

		if (FUNC7(dev))
			FUNC4(dev);
	} else {
		for (i = 0; i < adapter->num_rx_queues; i++)
			FUNC8(&adapter->rx_ring[i]->xdp_prog, adapter->xdp_prog);
	}

	if (old_prog)
		FUNC0(old_prog);

	return 0;
}