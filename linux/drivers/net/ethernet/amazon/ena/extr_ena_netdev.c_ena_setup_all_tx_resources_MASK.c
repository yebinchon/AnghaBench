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
struct ena_adapter {int num_queues; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ena_adapter*,int) ; 
 int FUNC1 (struct ena_adapter*,int) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct ena_adapter *adapter)
{
	int i, rc = 0;

	for (i = 0; i < adapter->num_queues; i++) {
		rc = FUNC1(adapter, i);
		if (rc)
			goto err_setup_tx;
	}

	return 0;

err_setup_tx:

	FUNC2(adapter, ifup, adapter->netdev,
		  "Tx queue %d: allocation failed\n", i);

	/* rewind the index freeing the rings as we go */
	while (i--)
		FUNC0(adapter, i);
	return rc;
}