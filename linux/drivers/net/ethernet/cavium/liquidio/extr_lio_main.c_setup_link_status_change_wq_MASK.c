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
struct octeon_device {TYPE_1__* pci_dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct lio* ctxptr; int /*<<< orphan*/  work; } ;
struct TYPE_6__ {TYPE_2__ wk; int /*<<< orphan*/  wq; } ;
struct lio {TYPE_3__ link_status_wq; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  octnet_link_status_change ; 

__attribute__((used)) static inline int FUNC4(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);
	struct octeon_device *oct = lio->oct_dev;

	lio->link_status_wq.wq = FUNC2("link-status",
						 WQ_MEM_RECLAIM, 0);
	if (!lio->link_status_wq.wq) {
		FUNC3(&oct->pci_dev->dev, "unable to create cavium link status wq\n");
		return -1;
	}
	FUNC1(&lio->link_status_wq.wk.work,
			  octnet_link_status_change);
	lio->link_status_wq.wk.ctxptr = lio;

	return 0;
}