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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct xdp_umem {int dummy; } ;
struct xdp_frame {int dummy; } ;
struct xdp_buff {int /*<<< orphan*/  handle; scalar_t__ data_hard_start; scalar_t__ data; } ;
struct ixgbe_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  xdp_prog; struct xdp_umem* xsk_umem; } ;
struct ixgbe_adapter {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int IXGBE_XDP_CONSUMED ; 
 int IXGBE_XDP_PASS ; 
 int IXGBE_XDP_REDIR ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC1 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct xdp_frame* FUNC3 (struct xdp_buff*) ; 
 int FUNC4 (struct ixgbe_adapter*,struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC10 (struct xdp_umem*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct ixgbe_adapter *adapter,
			    struct ixgbe_ring *rx_ring,
			    struct xdp_buff *xdp)
{
	struct xdp_umem *umem = rx_ring->xsk_umem;
	int err, result = IXGBE_XDP_PASS;
	struct bpf_prog *xdp_prog;
	struct xdp_frame *xdpf;
	u64 offset;
	u32 act;

	FUNC5();
	xdp_prog = FUNC0(rx_ring->xdp_prog);
	act = FUNC1(xdp_prog, xdp);
	offset = xdp->data - xdp->data_hard_start;

	xdp->handle = FUNC10(umem, xdp->handle, offset);

	switch (act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		xdpf = FUNC3(xdp);
		if (FUNC8(!xdpf)) {
			result = IXGBE_XDP_CONSUMED;
			break;
		}
		result = FUNC4(adapter, xdpf);
		break;
	case XDP_REDIRECT:
		err = FUNC9(rx_ring->netdev, xdp, xdp_prog);
		result = !err ? IXGBE_XDP_REDIR : IXGBE_XDP_CONSUMED;
		break;
	default:
		FUNC2(act);
		/* fallthrough */
	case XDP_ABORTED:
		FUNC7(rx_ring->netdev, xdp_prog, act);
		/* fallthrough -- handle aborts by dropping packet */
	case XDP_DROP:
		result = IXGBE_XDP_CONSUMED;
		break;
	}
	FUNC6();
	return result;
}