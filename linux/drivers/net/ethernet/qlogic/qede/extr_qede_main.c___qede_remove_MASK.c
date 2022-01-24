#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qede_dev {TYPE_2__* ops; int /*<<< orphan*/  sp_task; struct qed_dev* cdev; } ;
struct qed_dev {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
typedef  enum qede_remove_mode { ____Placeholder_qede_remove_mode } qede_remove_mode ;
struct TYPE_8__ {TYPE_3__* common; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* remove ) (struct qed_dev*) ;int /*<<< orphan*/  (* slowpath_stop ) (struct qed_dev*) ;} ;
struct TYPE_6__ {TYPE_1__* common; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_power_state ) (struct qed_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int QEDE_REMOVE_RECOVERY ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct qede_dev* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 TYPE_4__* qed_ops ; 
 int /*<<< orphan*/  FUNC7 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct qede_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qed_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_dev*) ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev, enum qede_remove_mode mode)
{
	struct net_device *ndev = FUNC5(pdev);
	struct qede_dev *edev;
	struct qed_dev *cdev;

	if (!ndev) {
		FUNC2(&pdev->dev, "Device has already been removed\n");
		return;
	}

	edev = FUNC4(ndev);
	cdev = edev->cdev;

	FUNC0(edev, "Starting qede_remove\n");

	FUNC8(edev, (mode == QEDE_REMOVE_RECOVERY));

	if (mode != QEDE_REMOVE_RECOVERY) {
		FUNC12(ndev);

		FUNC1(&edev->sp_task);

		edev->ops->common->set_power_state(cdev, PCI_D0);

		FUNC6(pdev, NULL);
	}

	FUNC7(edev);

	/* Use global ops since we've freed edev */
	qed_ops->common->slowpath_stop(cdev);
	if (system_state == SYSTEM_POWER_OFF)
		return;
	qed_ops->common->remove(cdev);

	/* Since this can happen out-of-sync with other flows,
	 * don't release the netdevice until after slowpath stop
	 * has been called to guarantee various other contexts
	 * [e.g., QED register callbacks] won't break anything when
	 * accessing the netdevice.
	 */
	if (mode != QEDE_REMOVE_RECOVERY)
		FUNC3(ndev);

	FUNC2(&pdev->dev, "Ending qede_remove successfully\n");
}