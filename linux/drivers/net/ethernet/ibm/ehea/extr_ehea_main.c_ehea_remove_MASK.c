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
struct platform_device {int dummy; } ;
struct ehea_adapter {int /*<<< orphan*/  list; TYPE_2__* neq; int /*<<< orphan*/  neq_tasklet; int /*<<< orphan*/ ** port; } ;
struct TYPE_3__ {int /*<<< orphan*/  ist1; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;

/* Variables and functions */
 int EHEA_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ehea_adapter* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct ehea_adapter *adapter = FUNC7(dev);
	int i;

	for (i = 0; i < EHEA_MAX_PORTS; i++)
		if (adapter->port[i]) {
			FUNC3(adapter->port[i]);
			adapter->port[i] = NULL;
		}

	FUNC2(dev);

	FUNC5(adapter->neq->attr.ist1, adapter);
	FUNC8(&adapter->neq_tasklet);

	FUNC0(adapter->neq);
	FUNC1(adapter);
	FUNC6(&adapter->list);

	FUNC4();

	return 0;
}