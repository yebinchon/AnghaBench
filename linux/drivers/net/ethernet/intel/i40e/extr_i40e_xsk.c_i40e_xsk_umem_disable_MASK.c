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
typedef  int /*<<< orphan*/  u16 ;
struct xdp_umem {int dummy; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {int /*<<< orphan*/  af_xdp_zc_qps; struct net_device* netdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct i40e_vsi*) ; 
 int FUNC2 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*,struct xdp_umem*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 struct xdp_umem* FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i40e_vsi *vsi, u16 qid)
{
	struct net_device *netdev = vsi->netdev;
	struct xdp_umem *umem;
	bool if_running;
	int err;

	umem = FUNC6(netdev, qid);
	if (!umem)
		return -EINVAL;

	if_running = FUNC5(vsi->netdev) && FUNC1(vsi);

	if (if_running) {
		err = FUNC2(vsi, qid);
		if (err)
			return err;
	}

	FUNC0(qid, vsi->af_xdp_zc_qps);
	FUNC4(vsi, umem);

	if (if_running) {
		err = FUNC3(vsi, qid);
		if (err)
			return err;
	}

	return 0;
}