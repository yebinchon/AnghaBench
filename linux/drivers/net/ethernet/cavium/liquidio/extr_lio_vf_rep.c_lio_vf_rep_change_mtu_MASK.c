#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {TYPE_2__* pci_dev; } ;
struct net_device {int mtu; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu; } ;
struct lio_vf_rep_req {TYPE_1__ rep_mtu; int /*<<< orphan*/  ifidx; int /*<<< orphan*/  req_type; } ;
struct lio_vf_rep_desc {int /*<<< orphan*/  ifidx; struct octeon_device* oct; } ;
typedef  int /*<<< orphan*/  rep_cfg ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  LIO_VF_REP_REQ_MTU ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct octeon_device*,struct lio_vf_rep_req*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lio_vf_rep_req*,int /*<<< orphan*/ ,int) ; 
 struct lio_vf_rep_desc* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *ndev, int new_mtu)
{
	struct lio_vf_rep_desc *vf_rep = FUNC4(ndev);
	struct lio_vf_rep_req rep_cfg;
	struct octeon_device *oct;
	int ret;

	oct = vf_rep->oct;

	FUNC3(&rep_cfg, 0, sizeof(rep_cfg));
	rep_cfg.req_type = LIO_VF_REP_REQ_MTU;
	rep_cfg.ifidx = vf_rep->ifidx;
	rep_cfg.rep_mtu.mtu = FUNC0(new_mtu);

	ret = FUNC2(oct, &rep_cfg,
					   sizeof(rep_cfg), NULL, 0);
	if (ret) {
		FUNC1(&oct->pci_dev->dev,
			"Change MTU failed with err %d\n", ret);
		return -EIO;
	}

	ndev->mtu = new_mtu;

	return 0;
}