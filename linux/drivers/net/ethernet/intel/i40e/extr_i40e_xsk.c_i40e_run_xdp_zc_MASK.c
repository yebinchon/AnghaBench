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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct xdp_umem {int dummy; } ;
struct xdp_buff {int /*<<< orphan*/  handle; scalar_t__ data_hard_start; scalar_t__ data; } ;
struct i40e_ring {size_t queue_index; int /*<<< orphan*/  netdev; TYPE_1__* vsi; int /*<<< orphan*/  xdp_prog; struct xdp_umem* xsk_umem; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct i40e_ring** xdp_rings; } ;

/* Variables and functions */
 int I40E_XDP_CONSUMED ; 
 int I40E_XDP_PASS ; 
 int I40E_XDP_REDIR ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC1 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct xdp_buff*,struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_umem*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct i40e_ring *rx_ring, struct xdp_buff *xdp)
{
	struct xdp_umem *umem = rx_ring->xsk_umem;
	int err, result = I40E_XDP_PASS;
	struct i40e_ring *xdp_ring;
	struct bpf_prog *xdp_prog;
	u64 offset;
	u32 act;

	FUNC4();
	/* NB! xdp_prog will always be !NULL, due to the fact that
	 * this path is enabled by setting an XDP program.
	 */
	xdp_prog = FUNC0(rx_ring->xdp_prog);
	act = FUNC1(xdp_prog, xdp);
	offset = xdp->data - xdp->data_hard_start;

	xdp->handle = FUNC8(umem, xdp->handle, offset);

	switch (act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->queue_index];
		result = FUNC3(xdp, xdp_ring);
		break;
	case XDP_REDIRECT:
		err = FUNC7(rx_ring->netdev, xdp, xdp_prog);
		result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
		break;
	default:
		FUNC2(act);
		/* fall through */
	case XDP_ABORTED:
		FUNC6(rx_ring->netdev, xdp_prog, act);
		/* fallthrough -- handle aborts by dropping packet */
	case XDP_DROP:
		result = I40E_XDP_CONSUMED;
		break;
	}
	FUNC5();
	return result;
}