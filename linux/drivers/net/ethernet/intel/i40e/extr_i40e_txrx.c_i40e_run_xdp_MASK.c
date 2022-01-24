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
typedef  int u32 ;
struct xdp_buff {int /*<<< orphan*/  data_hard_start; } ;
struct sk_buff {int dummy; } ;
struct i40e_ring {size_t queue_index; int /*<<< orphan*/  netdev; TYPE_1__* vsi; int /*<<< orphan*/  xdp_prog; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_2__ {struct i40e_ring** xdp_rings; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int) ; 
 int I40E_XDP_CONSUMED ; 
 int I40E_XDP_PASS ; 
 int I40E_XDP_REDIR ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 132 
#define  XDP_DROP 131 
#define  XDP_PASS 130 
#define  XDP_REDIRECT 129 
#define  XDP_TX 128 
 int FUNC2 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct xdp_buff*,struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct bpf_prog*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct xdp_buff*,struct bpf_prog*) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct i40e_ring *rx_ring,
				    struct xdp_buff *xdp)
{
	int err, result = I40E_XDP_PASS;
	struct i40e_ring *xdp_ring;
	struct bpf_prog *xdp_prog;
	u32 act;

	FUNC6();
	xdp_prog = FUNC1(rx_ring->xdp_prog);

	if (!xdp_prog)
		goto xdp_out;

	FUNC5(xdp->data_hard_start); /* xdp_frame write */

	act = FUNC2(xdp_prog, xdp);
	switch (act) {
	case XDP_PASS:
		break;
	case XDP_TX:
		xdp_ring = rx_ring->vsi->xdp_rings[rx_ring->queue_index];
		result = FUNC4(xdp, xdp_ring);
		break;
	case XDP_REDIRECT:
		err = FUNC9(rx_ring->netdev, xdp, xdp_prog);
		result = !err ? I40E_XDP_REDIR : I40E_XDP_CONSUMED;
		break;
	default:
		FUNC3(act);
		/* fall through */
	case XDP_ABORTED:
		FUNC8(rx_ring->netdev, xdp_prog, act);
		/* fall through -- handle aborts by dropping packet */
	case XDP_DROP:
		result = I40E_XDP_CONSUMED;
		break;
	}
xdp_out:
	FUNC7();
	return FUNC0(-result);
}