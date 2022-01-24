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
struct be_adapter {int* pmac_id; scalar_t__ vlans_added; TYPE_1__* netdev; int /*<<< orphan*/  dev_mac; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_IF_FILT_FLAGS_BASIC ; 
 int /*<<< orphan*/  ON ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct be_adapter *adapter)
{
	int status;

	status = FUNC1(adapter, BE_IF_FILT_FLAGS_BASIC, ON);
	if (status)
		return status;

	/* Normally this condition usually true as the ->dev_mac is zeroed.
	 * But on BE3 VFs the initial MAC is pre-programmed by PF and
	 * subsequent be_dev_mac_add() can fail (after fresh boot)
	 */
	if (!FUNC6(adapter->dev_mac, adapter->netdev->dev_addr)) {
		int old_pmac_id = -1;

		/* Remember old programmed MAC if any - can happen on BE3 VF */
		if (!FUNC7(adapter->dev_mac))
			old_pmac_id = adapter->pmac_id[0];

		status = FUNC2(adapter, adapter->netdev->dev_addr);
		if (status)
			return status;

		/* Delete the old programmed MAC as we successfully programmed
		 * a new MAC
		 */
		if (old_pmac_id >= 0 && old_pmac_id != adapter->pmac_id[0])
			FUNC3(adapter, old_pmac_id);

		FUNC5(adapter->dev_mac, adapter->netdev->dev_addr);
	}

	if (adapter->vlans_added)
		FUNC4(adapter);

	FUNC0(adapter);

	return 0;
}