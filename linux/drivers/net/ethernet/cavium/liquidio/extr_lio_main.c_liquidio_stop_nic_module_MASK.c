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
struct octeon_device {int ifcount; int num_oqs; TYPE_5__* pci_dev; int /*<<< orphan*/ * devlink; TYPE_1__* props; int /*<<< orphan*/  cmd_resp_wqlock; int /*<<< orphan*/  cmd_resp_state; } ;
struct TYPE_9__ {TYPE_3__* rxpciq; } ;
struct lio {TYPE_4__ linfo; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_8__ {TYPE_2__ s; } ;
struct TYPE_6__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 struct lio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCT_DRV_OFFLINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct octeon_device *oct)
{
	int i, j;
	struct lio *lio;

	FUNC1(&oct->pci_dev->dev, "Stopping network interfaces\n");
	if (!oct->ifcount) {
		FUNC2(&oct->pci_dev->dev, "Init for Octeon was not completed\n");
		return 1;
	}

	FUNC8(&oct->cmd_resp_wqlock);
	oct->cmd_resp_state = OCT_DRV_OFFLINE;
	FUNC9(&oct->cmd_resp_wqlock);

	FUNC5(oct);

	for (i = 0; i < oct->ifcount; i++) {
		lio = FUNC0(oct->props[i].netdev);
		for (j = 0; j < oct->num_oqs; j++)
			FUNC7(oct,
						   lio->linfo.rxpciq[j].s.q_no);
	}

	for (i = 0; i < oct->ifcount; i++)
		FUNC6(oct, i);

	if (oct->devlink) {
		FUNC4(oct->devlink);
		FUNC3(oct->devlink);
		oct->devlink = NULL;
	}

	FUNC1(&oct->pci_dev->dev, "Network interfaces stopped\n");
	return 0;
}