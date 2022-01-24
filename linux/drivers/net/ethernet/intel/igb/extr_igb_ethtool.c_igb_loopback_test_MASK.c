#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* pdev; TYPE_3__ hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ e1000_i354 ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int FUNC5 (struct igb_adapter*) ; 
 int FUNC6 (struct igb_adapter*) ; 
 int FUNC7 (struct igb_adapter*) ; 

__attribute__((used)) static int FUNC8(struct igb_adapter *adapter, u64 *data)
{
	/* PHY loopback cannot be performed if SoL/IDER
	 * sessions are active
	 */
	if (FUNC2(&adapter->hw)) {
		FUNC0(&adapter->pdev->dev,
			"Cannot do PHY loopback test when SoL/IDER is active.\n");
		*data = 0;
		goto out;
	}

	if (adapter->hw.mac.type == e1000_i354) {
		FUNC1(&adapter->pdev->dev,
			"Loopback test not supported on i354.\n");
		*data = 0;
		goto out;
	}
	*data = FUNC6(adapter);
	if (*data)
		goto out;
	*data = FUNC7(adapter);
	if (*data)
		goto err_loopback;
	*data = FUNC5(adapter);
	FUNC4(adapter);

err_loopback:
	FUNC3(adapter);
out:
	return *data;
}