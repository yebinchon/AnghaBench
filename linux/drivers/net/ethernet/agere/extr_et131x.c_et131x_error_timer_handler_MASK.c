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
struct timer_list {int dummy; } ;
struct phy_device {int /*<<< orphan*/  link; } ;
struct et131x_adapter {int boot_coma; int /*<<< orphan*/  error_timer; TYPE_1__* netdev; } ;
struct TYPE_2__ {struct phy_device* phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_ERROR_PERIOD ; 
 struct et131x_adapter* adapter ; 
 int /*<<< orphan*/  error_timer ; 
 int /*<<< orphan*/  FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct et131x_adapter*) ; 
 scalar_t__ FUNC2 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct et131x_adapter*) ; 
 struct et131x_adapter* FUNC5 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct timer_list *t)
{
	struct et131x_adapter *adapter = FUNC5(adapter, t, error_timer);
	struct phy_device *phydev = adapter->netdev->phydev;

	if (FUNC2(adapter)) {
		/* Bring the device immediately out of coma, to
		 * prevent it from sleeping indefinitely, this
		 * mechanism could be improved!
		 */
		FUNC0(adapter);
		adapter->boot_coma = 20;
	} else {
		FUNC3(adapter);
	}

	if (!phydev->link && adapter->boot_coma < 11)
		adapter->boot_coma++;

	if (adapter->boot_coma == 10) {
		if (!phydev->link) {
			if (!FUNC2(adapter)) {
				/* NOTE - This was originally a 'sync with
				 *  interrupt'. How to do that under Linux?
				 */
				FUNC4(adapter);
				FUNC1(adapter);
			}
		}
	}

	/* This is a periodic timer, so reschedule */
	FUNC6(&adapter->error_timer, jiffies +
		  FUNC7(TX_ERROR_PERIOD));
}