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
typedef  scalar_t__ u16 ;
struct xdp_umem_fq_reuse {int dummy; } ;
struct xdp_umem {int dummy; } ;
struct net_device {scalar_t__ real_num_rx_queues; scalar_t__ real_num_tx_queues; } ;
struct i40e_vsi {scalar_t__ type; scalar_t__ num_queue_pairs; struct net_device* netdev; int /*<<< orphan*/  af_xdp_zc_qps; TYPE_1__** rx_rings; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ I40E_VSI_MAIN ; 
 int /*<<< orphan*/  XDP_WAKEUP_RX ; 
 scalar_t__ FUNC0 (struct i40e_vsi*) ; 
 int FUNC1 (struct i40e_vsi*,scalar_t__) ; 
 int FUNC2 (struct i40e_vsi*,scalar_t__) ; 
 int FUNC3 (struct i40e_vsi*,struct xdp_umem*) ; 
 int FUNC4 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct xdp_umem_fq_reuse* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xdp_umem*,struct xdp_umem_fq_reuse*) ; 

__attribute__((used)) static int FUNC10(struct i40e_vsi *vsi, struct xdp_umem *umem,
				u16 qid)
{
	struct net_device *netdev = vsi->netdev;
	struct xdp_umem_fq_reuse *reuseq;
	bool if_running;
	int err;

	if (vsi->type != I40E_VSI_MAIN)
		return -EINVAL;

	if (qid >= vsi->num_queue_pairs)
		return -EINVAL;

	if (qid >= netdev->real_num_rx_queues ||
	    qid >= netdev->real_num_tx_queues)
		return -EINVAL;

	reuseq = FUNC8(vsi->rx_rings[0]->count);
	if (!reuseq)
		return -ENOMEM;

	FUNC7(FUNC9(umem, reuseq));

	err = FUNC3(vsi, umem);
	if (err)
		return err;

	FUNC6(qid, vsi->af_xdp_zc_qps);

	if_running = FUNC5(vsi->netdev) && FUNC0(vsi);

	if (if_running) {
		err = FUNC1(vsi, qid);
		if (err)
			return err;

		err = FUNC2(vsi, qid);
		if (err)
			return err;

		/* Kick start the NAPI context so that receiving will start */
		err = FUNC4(vsi->netdev, qid, XDP_WAKEUP_RX);
		if (err)
			return err;
	}

	return 0;
}