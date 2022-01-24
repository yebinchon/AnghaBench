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
typedef  scalar_t__ u32 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct device {int dummy; } ;
struct be_adapter {scalar_t__* pmac_id; int /*<<< orphan*/ * dev_mac; int /*<<< orphan*/  if_handle; int /*<<< orphan*/  rx_filter_lock; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_PRIV_FILTMGMT ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int EADDRNOTAVAIL ; 
 int EPERM ; 
 int ETH_ALEN ; 
 int FUNC1 (struct be_adapter*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct be_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct be_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *netdev, void *p)
{
	struct be_adapter *adapter = FUNC13(netdev);
	struct device *dev = &adapter->pdev->dev;
	struct sockaddr *addr = p;
	int status;
	u8 mac[ETH_ALEN];
	u32 old_pmac_id = adapter->pmac_id[0];

	if (!FUNC10(addr->sa_data))
		return -EADDRNOTAVAIL;

	/* Proceed further only if, User provided MAC is different
	 * from active MAC
	 */
	if (FUNC9(addr->sa_data, adapter->dev_mac))
		return 0;

	/* BE3 VFs without FILTMGMT privilege are not allowed to set its MAC
	 * address
	 */
	if (FUNC0(adapter) && FUNC4(adapter) &&
	    !FUNC5(adapter, BE_PRIV_FILTMGMT))
		return -EPERM;

	/* if device is not running, copy MAC to netdev->dev_addr */
	if (!FUNC14(netdev))
		goto done;

	/* The PMAC_ADD cmd may fail if the VF doesn't have FILTMGMT
	 * privilege or if PF did not provision the new MAC address.
	 * On BE3, this cmd will always fail if the VF doesn't have the
	 * FILTMGMT privilege. This failure is OK, only if the PF programmed
	 * the MAC for the VF.
	 */
	FUNC11(&adapter->rx_filter_lock);
	status = FUNC2(adapter, (u8 *)addr->sa_data);
	if (!status) {

		/* Delete the old programmed MAC. This call may fail if the
		 * old MAC was already deleted by the PF driver.
		 */
		if (adapter->pmac_id[0] != old_pmac_id)
			FUNC3(adapter, old_pmac_id);
	}

	FUNC12(&adapter->rx_filter_lock);
	/* Decide if the new MAC is successfully activated only after
	 * querying the FW
	 */
	status = FUNC1(adapter, adapter->pmac_id[0], mac,
				       adapter->if_handle, true, 0);
	if (status)
		goto err;

	/* The MAC change did not happen, either due to lack of privilege
	 * or PF didn't pre-provision.
	 */
	if (!FUNC9(addr->sa_data, mac)) {
		status = -EPERM;
		goto err;
	}

	/* Remember currently programmed MAC */
	FUNC8(adapter->dev_mac, addr->sa_data);
done:
	FUNC8(netdev->dev_addr, addr->sa_data);
	FUNC6(dev, "MAC address changed to %pM\n", addr->sa_data);
	return 0;
err:
	FUNC7(dev, "MAC address change to %pM failed\n", addr->sa_data);
	return status;
}