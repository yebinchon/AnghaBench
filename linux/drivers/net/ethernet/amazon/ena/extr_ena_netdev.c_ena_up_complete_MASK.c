#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ena_adapter {TYPE_1__* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int FUNC3 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct ena_adapter *adapter)
{
	int rc;

	rc = FUNC3(adapter);
	if (rc)
		return rc;

	FUNC0(adapter->netdev, adapter->netdev->mtu);

	FUNC2(adapter);

	/* enable transmits */
	FUNC4(adapter->netdev);

	FUNC1(adapter);

	return 0;
}