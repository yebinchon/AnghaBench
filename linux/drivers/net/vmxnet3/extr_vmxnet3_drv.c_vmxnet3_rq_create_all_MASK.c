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
struct vmxnet3_adapter {int num_rx_queues; int /*<<< orphan*/  rxdataring_enabled; TYPE_1__* netdev; int /*<<< orphan*/ * rx_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC6(struct vmxnet3_adapter *adapter)
{
	int i, err = 0;

	adapter->rxdataring_enabled = FUNC0(adapter);

	for (i = 0; i < adapter->num_rx_queues; i++) {
		err = FUNC3(&adapter->rx_queue[i], adapter);
		if (FUNC2(err)) {
			FUNC1(&adapter->netdev->dev,
				"%s: failed to create rx queue%i\n",
				adapter->netdev->name, i);
			goto err_out;
		}
	}

	if (!adapter->rxdataring_enabled)
		FUNC5(adapter);

	return err;
err_out:
	FUNC4(adapter);
	return err;

}