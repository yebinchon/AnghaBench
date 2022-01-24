#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct t3cdev {int /*<<< orphan*/  type; int /*<<< orphan*/  ctl; int /*<<< orphan*/  send; int /*<<< orphan*/  ofld_dev_list; } ;
struct adapter {struct t3cdev tdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct t3cdev*) ; 
 int /*<<< orphan*/  cxgb_offload_ctl ; 
 int /*<<< orphan*/  FUNC3 (struct t3cdev*) ; 
 int /*<<< orphan*/  t3_offload_tx ; 

void FUNC4(struct adapter *adapter)
{
	struct t3cdev *tdev = &adapter->tdev;

	FUNC0(&tdev->ofld_dev_list);

	FUNC2(tdev);
	tdev->send = t3_offload_tx;
	tdev->ctl = cxgb_offload_ctl;
	tdev->type = FUNC1(adapter);

	FUNC3(tdev);
}