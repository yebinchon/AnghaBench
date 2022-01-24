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
struct nicvf {scalar_t__ rx_queues; scalar_t__ tx_queues; scalar_t__ max_queues; struct net_device* netdev; int /*<<< orphan*/ * xdp_prog; } ;
struct net_device {scalar_t__ mtu; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_XDP_MTU ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,scalar_t__) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nicvf*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 struct bpf_prog* FUNC10 (int /*<<< orphan*/ **,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC11(struct nicvf *nic, struct bpf_prog *prog)
{
	struct net_device *dev = nic->netdev;
	bool if_up = FUNC5(nic->netdev);
	struct bpf_prog *old_prog;
	bool bpf_attached = false;
	int ret = 0;

	/* For now just support only the usual MTU sized frames,
	 * plus some headroom for VLAN, QinQ.
	 */
	if (prog && dev->mtu > MAX_XDP_MTU) {
		FUNC4(dev, "Jumbo frames not yet supported with XDP, current MTU %d.\n",
			    dev->mtu);
		return -EOPNOTSUPP;
	}

	/* ALL SQs attached to CQs i.e same as RQs, are treated as
	 * XDP Tx queues and more Tx queues are allocated for
	 * network stack to send pkts out.
	 *
	 * No of Tx queues are either same as Rx queues or whatever
	 * is left in max no of queues possible.
	 */
	if ((nic->rx_queues + nic->tx_queues) > nic->max_queues) {
		FUNC4(dev,
			    "Failed to attach BPF prog, RXQs + TXQs > Max %d\n",
			    nic->max_queues);
		return -ENOMEM;
	}

	if (if_up)
		FUNC9(nic->netdev);

	old_prog = FUNC10(&nic->xdp_prog, prog);
	/* Detach old prog, if any */
	if (old_prog)
		FUNC3(old_prog);

	if (nic->xdp_prog) {
		/* Attach BPF program */
		nic->xdp_prog = FUNC2(nic->xdp_prog, nic->rx_queues - 1);
		if (!FUNC0(nic->xdp_prog)) {
			bpf_attached = true;
		} else {
			ret = FUNC1(nic->xdp_prog);
			nic->xdp_prog = NULL;
		}
	}

	/* Calculate Tx queues needed for XDP and network stack */
	FUNC8(nic, bpf_attached);

	if (if_up) {
		/* Reinitialize interface, clean slate */
		FUNC7(nic->netdev);
		FUNC6(nic->netdev);
	}

	return ret;
}