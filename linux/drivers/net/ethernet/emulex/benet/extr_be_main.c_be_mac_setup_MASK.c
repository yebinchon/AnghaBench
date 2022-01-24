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
typedef  int /*<<< orphan*/  u8 ;
struct be_adapter {int /*<<< orphan*/  dev_mac; TYPE_1__* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int ETH_ALEN ; 
 int FUNC1 (struct be_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct be_adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct be_adapter *adapter)
{
	u8 mac[ETH_ALEN];
	int status;

	if (FUNC3(adapter->netdev->dev_addr)) {
		status = FUNC1(adapter, mac);
		if (status)
			return status;

		FUNC4(adapter->netdev->dev_addr, mac, ETH_ALEN);
		FUNC4(adapter->netdev->perm_addr, mac, ETH_ALEN);

		/* Initial MAC for BE3 VFs is already programmed by PF */
		if (FUNC0(adapter) && FUNC2(adapter))
			FUNC4(adapter->dev_mac, mac, ETH_ALEN);
	}

	return 0;
}