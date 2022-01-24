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
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct lio_vf_rep_req {TYPE_1__ rep_name; int /*<<< orphan*/  ifidx; int /*<<< orphan*/  req_type; } ;
struct lio_vf_rep_desc {int /*<<< orphan*/  ifidx; struct octeon_device* oct; } ;
typedef  int /*<<< orphan*/  rep_cfg ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ LIO_IF_NAME_SIZE ; 
 int /*<<< orphan*/  LIO_VF_REP_REQ_DEVNAME ; 
#define  NETDEV_CHANGENAME 129 
#define  NETDEV_REGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  lio_vf_rep_ndev_ops ; 
 int FUNC1 (struct octeon_device*,struct lio_vf_rep_req*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lio_vf_rep_req*,int /*<<< orphan*/ ,int) ; 
 struct net_device* FUNC3 (void*) ; 
 struct lio_vf_rep_desc* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct notifier_block *nb,
			unsigned long event, void *ptr)
{
	struct net_device *ndev = FUNC3(ptr);
	struct lio_vf_rep_desc *vf_rep;
	struct lio_vf_rep_req rep_cfg;
	struct octeon_device *oct;
	int ret;

	switch (event) {
	case NETDEV_REGISTER:
	case NETDEV_CHANGENAME:
		break;

	default:
		return NOTIFY_DONE;
	}

	if (ndev->netdev_ops != &lio_vf_rep_ndev_ops)
		return NOTIFY_DONE;

	vf_rep = FUNC4(ndev);
	oct = vf_rep->oct;

	if (FUNC5(ndev->name) > LIO_IF_NAME_SIZE) {
		FUNC0(&oct->pci_dev->dev,
			"Device name change sync failed as the size is > %d\n",
			LIO_IF_NAME_SIZE);
		return NOTIFY_DONE;
	}

	FUNC2(&rep_cfg, 0, sizeof(rep_cfg));
	rep_cfg.req_type = LIO_VF_REP_REQ_DEVNAME;
	rep_cfg.ifidx = vf_rep->ifidx;
	FUNC6(rep_cfg.rep_name.name, ndev->name, LIO_IF_NAME_SIZE);

	ret = FUNC1(oct, &rep_cfg,
					   sizeof(rep_cfg), NULL, 0);
	if (ret)
		FUNC0(&oct->pci_dev->dev,
			"vf_rep netdev name change failed with err %d\n", ret);

	return NOTIFY_DONE;
}