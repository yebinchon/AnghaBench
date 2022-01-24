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
struct qede_dev {int /*<<< orphan*/  cdev; TYPE_2__* ops; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_drv_state ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* set_power_state ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  QEDE_LOAD_NORMAL ; 
 struct qede_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct qede_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct qede_dev *edev = FUNC0(ndev);
	int rc;

	FUNC1(ndev);

	edev->ops->common->set_power_state(edev->cdev, PCI_D0);

	rc = FUNC2(edev, QEDE_LOAD_NORMAL, false);
	if (rc)
		return rc;

	FUNC5(ndev);

	edev->ops->common->update_drv_state(edev->cdev, true);

	return 0;
}