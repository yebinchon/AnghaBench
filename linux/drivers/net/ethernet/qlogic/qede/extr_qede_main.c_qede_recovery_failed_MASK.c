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
struct qede_dev {scalar_t__ cdev; TYPE_2__* ops; int /*<<< orphan*/  ndev; } ;
struct TYPE_4__ {TYPE_1__* common; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_power_state ) (scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qede_dev *edev)
{
	FUNC0(edev->ndev, "Recovery handling has failed. Power cycle is needed.\n");

	FUNC1(edev->ndev);

	if (edev->cdev)
		edev->ops->common->set_power_state(edev->cdev, PCI_D3hot);
}