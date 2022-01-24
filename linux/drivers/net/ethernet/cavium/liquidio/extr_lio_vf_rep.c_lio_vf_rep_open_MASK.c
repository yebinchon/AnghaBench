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
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct lio_vf_rep_req {TYPE_1__ rep_state; int /*<<< orphan*/  ifidx; int /*<<< orphan*/  req_type; } ;
struct lio_vf_rep_desc {int /*<<< orphan*/  ifstate; int /*<<< orphan*/  ifidx; struct octeon_device* oct; } ;
typedef  int /*<<< orphan*/  rep_cfg ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int LIO_IFSTATE_RUNNING ; 
 int /*<<< orphan*/  LIO_VF_REP_REQ_STATE ; 
 int /*<<< orphan*/  LIO_VF_REP_STATE_UP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct octeon_device*,struct lio_vf_rep_req*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lio_vf_rep_req*,int /*<<< orphan*/ ,int) ; 
 struct lio_vf_rep_desc* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int
FUNC8(struct net_device *ndev)
{
	struct lio_vf_rep_desc *vf_rep = FUNC5(ndev);
	struct lio_vf_rep_req rep_cfg;
	struct octeon_device *oct;
	int ret;

	oct = vf_rep->oct;

	FUNC4(&rep_cfg, 0, sizeof(rep_cfg));
	rep_cfg.req_type = LIO_VF_REP_REQ_STATE;
	rep_cfg.ifidx = vf_rep->ifidx;
	rep_cfg.rep_state.state = LIO_VF_REP_STATE_UP;

	ret = FUNC3(oct, &rep_cfg,
					   sizeof(rep_cfg), NULL, 0);

	if (ret) {
		FUNC2(&oct->pci_dev->dev,
			"VF_REP open failed with err %d\n", ret);
		return -EIO;
	}

	FUNC1(&vf_rep->ifstate, (FUNC0(&vf_rep->ifstate) |
				      LIO_IFSTATE_RUNNING));

	FUNC6(ndev);
	FUNC7(ndev);

	return 0;
}