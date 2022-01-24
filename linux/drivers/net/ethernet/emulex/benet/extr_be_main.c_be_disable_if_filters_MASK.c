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
struct be_adapter {int /*<<< orphan*/  if_flags; int /*<<< orphan*/  dev_mac; int /*<<< orphan*/ * pmac_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_IF_ALL_FILT_FLAGS ; 
 int /*<<< orphan*/  BE_PRIV_FILTMGMT ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  OFF ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 
 scalar_t__ FUNC6 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct be_adapter*) ; 

__attribute__((used)) static void FUNC9(struct be_adapter *adapter)
{
	/* Don't delete MAC on BE3 VFs without FILTMGMT privilege  */
	if (!FUNC0(adapter) || !FUNC5(adapter) ||
	    FUNC6(adapter, BE_PRIV_FILTMGMT)) {
		FUNC4(adapter, adapter->pmac_id[0]);
		FUNC7(adapter->dev_mac);
	}

	FUNC2(adapter);
	FUNC1(adapter);

	/* The IFACE flags are enabled in the open path and cleared
	 * in the close path. When a VF gets detached from the host and
	 * assigned to a VM the following happens:
	 *	- VF's IFACE flags get cleared in the detach path
	 *	- IFACE create is issued by the VF in the attach path
	 * Due to a bug in the BE3/Skyhawk-R FW
	 * (Lancer FW doesn't have the bug), the IFACE capability flags
	 * specified along with the IFACE create cmd issued by a VF are not
	 * honoured by FW.  As a consequence, if a *new* driver
	 * (that enables/disables IFACE flags in open/close)
	 * is loaded in the host and an *old* driver is * used by a VM/VF,
	 * the IFACE gets created *without* the needed flags.
	 * To avoid this, disable RX-filter flags only for Lancer.
	 */
	if (FUNC8(adapter)) {
		FUNC3(adapter, BE_IF_ALL_FILT_FLAGS, OFF);
		adapter->if_flags &= ~BE_IF_ALL_FILT_FLAGS;
	}
}