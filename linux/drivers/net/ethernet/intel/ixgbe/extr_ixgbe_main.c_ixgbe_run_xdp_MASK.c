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
struct xdp_buff {int /*<<< orphan*/  data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  xdp_prog; } ;
struct ixgbe_adapter {int /*<<< orphan*/  netdev; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int IXGBE_XDP_CONSUMED ; 
 int IXGBE_XDP_PASS ; 
 int IXGBE_XDP_REDIR ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC2 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct xdp_frame* FUNC4 (struct xdp_buff*) ; 
 int FUNC5 (struct ixgbe_adapter*,struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct ixgbe_adapter *adapter,
				     struct ixgbe_ring *rx_ring,
				     struct xdp_buff *xdp)
{
	int err, result = IXGBE_XDP_PASS;
	struct bpf_prog *xdp_prog;
	struct xdp_frame *xdpf;
	u32 act;

	FUNC7();
	xdp_prog = FUNC1(rx_ring->xdp_prog);

	if (!xdp_prog)
		goto xdp_out;

	FUNC6(xdp->data_hard_start); /* xdp_frame write */

	act = FUNC2(xdp_prog, xdp);
	switch (act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		xdpf = FUNC4(xdp);
		if (FUNC10(!xdpf)) {
			result = IXGBE_XDP_CONSUMED;
			break;
		}
		result = FUNC5(adapter, xdpf);
		break;
	case XDP_REDIRECT:
		err = FUNC11(adapter->netdev, xdp, xdp_prog);
		if (!err)
			result = IXGBE_XDP_REDIR;
		else
			result = IXGBE_XDP_CONSUMED;
		break;
	default:
		FUNC3(act);
		/* fallthrough */
	case XDP_ABORTED:
		FUNC9(rx_ring->netdev, xdp_prog, act);
		/* fallthrough -- handle aborts by dropping packet */
	case XDP_DROP:
		result = IXGBE_XDP_CONSUMED;
		break;
	}
xdp_out:
	FUNC8();
	return FUNC0(-result);
}