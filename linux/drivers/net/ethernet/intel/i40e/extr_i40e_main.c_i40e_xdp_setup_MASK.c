#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {int rx_buf_len; int num_queue_pairs; TYPE_3__* netdev; TYPE_2__** xdp_rings; int /*<<< orphan*/  xdp_prog; TYPE_1__** rx_rings; struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_6__ {int mtu; } ;
struct TYPE_5__ {scalar_t__ xsk_umem; } ;
struct TYPE_4__ {int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XDP_WAKEUP_RX ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 int FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_pf*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 struct bpf_prog* FUNC6 (int /*<<< orphan*/ *,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC7(struct i40e_vsi *vsi,
			  struct bpf_prog *prog)
{
	int frame_size = vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
	struct i40e_pf *pf = vsi->back;
	struct bpf_prog *old_prog;
	bool need_reset;
	int i;

	/* Don't allow frames that span over multiple buffers */
	if (frame_size > vsi->rx_buf_len)
		return -EINVAL;

	if (!FUNC2(vsi) && !prog)
		return 0;

	/* When turning XDP on->off/off->on we reset and rebuild the rings. */
	need_reset = (FUNC2(vsi) != !!prog);

	if (need_reset)
		FUNC3(pf, true);

	old_prog = FUNC6(&vsi->xdp_prog, prog);

	if (need_reset)
		FUNC4(pf, true, true);

	for (i = 0; i < vsi->num_queue_pairs; i++)
		FUNC0(vsi->rx_rings[i]->xdp_prog, vsi->xdp_prog);

	if (old_prog)
		FUNC1(old_prog);

	/* Kick start the NAPI context if there is an AF_XDP socket open
	 * on that queue id. This so that receiving will start.
	 */
	if (need_reset && prog)
		for (i = 0; i < vsi->num_queue_pairs; i++)
			if (vsi->xdp_rings[i]->xsk_umem)
				(void)FUNC5(vsi->netdev, i,
						      XDP_WAKEUP_RX);

	return 0;
}