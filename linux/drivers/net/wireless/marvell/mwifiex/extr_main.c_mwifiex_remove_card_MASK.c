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
struct TYPE_2__ {int /*<<< orphan*/  (* unregister_dev ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {scalar_t__ irq_wakeup; TYPE_1__ if_ops; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_adapter*) ; 

int FUNC5(struct mwifiex_adapter *adapter)
{
	if (!adapter)
		return 0;

	FUNC3(adapter);

	if (adapter->irq_wakeup >= 0)
		FUNC0(adapter->dev, false);

	/* Unregister device */
	FUNC1(adapter, INFO,
		    "info: unregister device\n");
	if (adapter->if_ops.unregister_dev)
		adapter->if_ops.unregister_dev(adapter);
	/* Free adapter structure */
	FUNC1(adapter, INFO,
		    "info: free adapter\n");
	FUNC2(adapter);

	return 0;
}