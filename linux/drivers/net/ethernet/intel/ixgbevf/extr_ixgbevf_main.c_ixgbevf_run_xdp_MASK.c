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
struct xdp_buff {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ixgbevf_ring {size_t queue_index; int /*<<< orphan*/  netdev; int /*<<< orphan*/  xdp_prog; } ;
struct ixgbevf_adapter {struct ixgbevf_ring** xdp_ring; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int IXGBEVF_XDP_CONSUMED ; 
 int IXGBEVF_XDP_PASS ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 131 
#define  XDP_DROP 130 
#define  XDP_PASS 129 
#define  XDP_TX 128 
 int FUNC2 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ixgbevf_ring*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct ixgbevf_adapter *adapter,
				       struct ixgbevf_ring  *rx_ring,
				       struct xdp_buff *xdp)
{
	int result = IXGBEVF_XDP_PASS;
	struct ixgbevf_ring *xdp_ring;
	struct bpf_prog *xdp_prog;
	u32 act;

	FUNC5();
	xdp_prog = FUNC1(rx_ring->xdp_prog);

	if (!xdp_prog)
		goto xdp_out;

	act = FUNC2(xdp_prog, xdp);
	switch (act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		xdp_ring = adapter->xdp_ring[rx_ring->queue_index];
		result = FUNC4(xdp_ring, xdp);
		break;
	default:
		FUNC3(act);
		/* fallthrough */
	case XDP_ABORTED:
		FUNC7(rx_ring->netdev, xdp_prog, act);
		/* fallthrough -- handle aborts by dropping packet */
	case XDP_DROP:
		result = IXGBEVF_XDP_CONSUMED;
		break;
	}
xdp_out:
	FUNC6();
	return FUNC0(-result);
}