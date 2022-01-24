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
struct cnic_local {int /*<<< orphan*/  cnic_irq_task; struct cnic_eth_dev* ethdev; } ;
struct cnic_eth_dev {TYPE_1__* irq_arr; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  cnic_irq ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	struct cnic_eth_dev *ethdev = cp->ethdev;
	int err;

	err = FUNC0(ethdev->irq_arr[0].vector, cnic_irq, 0, "cnic", dev);
	if (err)
		FUNC1(&cp->cnic_irq_task);

	return err;
}