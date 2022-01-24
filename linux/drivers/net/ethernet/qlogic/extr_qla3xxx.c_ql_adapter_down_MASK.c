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
struct ql3_adapter {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  index; int /*<<< orphan*/  napi; int /*<<< orphan*/  adapter_timer; TYPE_1__* pdev; int /*<<< orphan*/  flags; struct net_device* ndev; scalar_t__ msi; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL_ADAPTER_UP ; 
 int /*<<< orphan*/  QL_LINK_MASTER ; 
 int /*<<< orphan*/  QL_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ql3_adapter*) ; 
 scalar_t__ FUNC12 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct ql3_adapter *qdev, int do_reset)
{
	struct net_device *ndev = qdev->ndev;
	int retval = 0;

	FUNC7(ndev);
	FUNC6(ndev);

	FUNC0(QL_ADAPTER_UP, &qdev->flags);
	FUNC0(QL_LINK_MASTER, &qdev->flags);

	FUNC10(qdev);

	FUNC2(qdev->pdev->irq, ndev);

	if (qdev->msi && FUNC15(QL_MSI_ENABLED, &qdev->flags)) {
		FUNC5(qdev->ndev, "calling pci_disable_msi()\n");
		FUNC0(QL_MSI_ENABLED, &qdev->flags);
		FUNC8(qdev->pdev);
	}

	FUNC1(&qdev->adapter_timer);

	FUNC3(&qdev->napi);

	if (do_reset) {
		int soft_reset;
		unsigned long hw_flags;

		FUNC13(&qdev->hw_lock, hw_flags);
		if (FUNC12(qdev)) {
			soft_reset = FUNC9(qdev);
			if (soft_reset) {
				FUNC4(ndev, "ql_adapter_reset(%d) FAILED!\n",
					   qdev->index);
			}
			FUNC4(ndev,
				   "Releasing driver lock via chip reset\n");
		} else {
			FUNC4(ndev,
				   "Could not acquire driver lock to do reset!\n");
			retval = -1;
		}
		FUNC14(&qdev->hw_lock, hw_flags);
	}
	FUNC11(qdev);
	return retval;
}