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
struct TYPE_5__ {int /*<<< orphan*/  work; struct lio* ctxptr; } ;
struct TYPE_6__ {TYPE_2__ wk; int /*<<< orphan*/  wq; } ;
struct lio {TYPE_3__ txq_status_wq; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  octnet_poll_check_txq_status ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);
	struct octeon_device *oct = lio->oct_dev;

	lio->txq_status_wq.wq = FUNC2("txq-status",
						WQ_MEM_RECLAIM, 0);
	if (!lio->txq_status_wq.wq) {
		FUNC3(&oct->pci_dev->dev, "unable to create cavium txq status wq\n");
		return -1;
	}
	FUNC1(&lio->txq_status_wq.wk.work,
			  octnet_poll_check_txq_status);
	lio->txq_status_wq.wk.ctxptr = lio;
	FUNC5(lio->txq_status_wq.wq,
			   &lio->txq_status_wq.wk.work, FUNC4(1));
	return 0;
}