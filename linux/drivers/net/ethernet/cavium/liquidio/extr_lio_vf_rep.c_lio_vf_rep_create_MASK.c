#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_vfs; struct net_device** ndev; } ;
struct TYPE_6__ {int num_vfs_alloced; int /*<<< orphan*/  sriov_enabled; } ;
struct octeon_device {scalar_t__ eswitch_mode; int pf_num; TYPE_5__ vf_rep_list; TYPE_3__* pci_dev; TYPE_2__* props; TYPE_1__ sriov_info; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/  min_mtu; } ;
struct TYPE_9__ {int /*<<< orphan*/  work; void* ctxptr; } ;
struct lio_vf_rep_desc {int ifidx; TYPE_4__ stats_wk; int /*<<< orphan*/  parent_ndev; struct octeon_device* oct; struct net_device* ndev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIO_MAX_MTU_SIZE ; 
 int /*<<< orphan*/  LIO_MIN_MTU_SIZE ; 
 int /*<<< orphan*/  LIO_VF_REP_STATS_POLL_TIME_MS ; 
 int /*<<< orphan*/  OPCODE_NIC ; 
 int /*<<< orphan*/  OPCODE_NIC_VF_REP_PKT ; 
 struct net_device* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  lio_vf_rep_fetch_stats ; 
 int /*<<< orphan*/  lio_vf_rep_ndev_ops ; 
 int /*<<< orphan*/  lio_vf_rep_pkt_recv ; 
 int /*<<< orphan*/  FUNC6 (struct lio_vf_rep_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct lio_vf_rep_desc* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct octeon_device*) ; 
 scalar_t__ FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 

int
FUNC14(struct octeon_device *oct)
{
	struct lio_vf_rep_desc *vf_rep;
	struct net_device *ndev;
	int i, num_vfs;

	if (oct->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
		return 0;

	if (!oct->sriov_info.sriov_enabled)
		return 0;

	num_vfs = oct->sriov_info.num_vfs_alloced;

	oct->vf_rep_list.num_vfs = 0;
	for (i = 0; i < num_vfs; i++) {
		ndev = FUNC1(sizeof(struct lio_vf_rep_desc));

		if (!ndev) {
			FUNC3(&oct->pci_dev->dev,
				"VF rep device %d creation failed\n", i);
			goto cleanup;
		}

		ndev->min_mtu = LIO_MIN_MTU_SIZE;
		ndev->max_mtu = LIO_MAX_MTU_SIZE;
		ndev->netdev_ops = &lio_vf_rep_ndev_ops;

		vf_rep = FUNC8(ndev);
		FUNC6(vf_rep, 0, sizeof(*vf_rep));

		vf_rep->ndev = ndev;
		vf_rep->oct = oct;
		vf_rep->parent_ndev = oct->props[0].netdev;
		vf_rep->ifidx = (oct->pf_num * 64) + i + 1;

		FUNC4(ndev);

		if (FUNC11(ndev)) {
			FUNC3(&oct->pci_dev->dev, "VF rep nerdev registration failed\n");

			FUNC5(ndev);
			goto cleanup;
		}

		FUNC9(ndev);

		FUNC0(&vf_rep->stats_wk.work,
				  lio_vf_rep_fetch_stats);
		vf_rep->stats_wk.ctxptr = (void *)vf_rep;
		FUNC12(&vf_rep->stats_wk.work,
				      FUNC7
				      (LIO_VF_REP_STATS_POLL_TIME_MS));
		oct->vf_rep_list.num_vfs++;
		oct->vf_rep_list.ndev[i] = ndev;
	}

	if (FUNC10(oct, OPCODE_NIC,
					OPCODE_NIC_VF_REP_PKT,
					lio_vf_rep_pkt_recv, oct)) {
		FUNC3(&oct->pci_dev->dev, "VF rep Dispatch func registration failed\n");

		goto cleanup;
	}

	return 0;

cleanup:
	for (i = 0; i < oct->vf_rep_list.num_vfs; i++) {
		ndev = oct->vf_rep_list.ndev[i];
		oct->vf_rep_list.ndev[i] = NULL;
		if (ndev) {
			vf_rep = FUNC8(ndev);
			FUNC2
				(&vf_rep->stats_wk.work);
			FUNC13(ndev);
			FUNC5(ndev);
		}
	}

	oct->vf_rep_list.num_vfs = 0;

	return -1;
}