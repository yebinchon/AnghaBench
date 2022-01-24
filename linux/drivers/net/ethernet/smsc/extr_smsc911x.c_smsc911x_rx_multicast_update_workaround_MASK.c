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
struct smsc911x_data {int /*<<< orphan*/  mac_lock; scalar_t__ multicast_update_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_CR ; 
 int MAC_CR_RXEN_ ; 
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct smsc911x_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct smsc911x_data *pdata)
{
	unsigned int mac_cr;

	/* This function is only called for older LAN911x devices
	 * (revA or revB), where MAC_CR, HASHH and HASHL should not
	 * be modified during Rx - newer devices immediately update the
	 * registers.
	 *
	 * This is called from interrupt context */

	FUNC4(&pdata->mac_lock);

	/* Check Rx has stopped */
	if (FUNC1(pdata, MAC_CR) & MAC_CR_RXEN_)
		FUNC0(pdata, drv, "Rx not stopped");

	/* Perform the update - safe to do now Rx has stopped */
	FUNC3(pdata);

	/* Re-enable Rx */
	mac_cr = FUNC1(pdata, MAC_CR);
	mac_cr |= MAC_CR_RXEN_;
	FUNC2(pdata, MAC_CR, mac_cr);

	pdata->multicast_update_pending = 0;

	FUNC5(&pdata->mac_lock);
}