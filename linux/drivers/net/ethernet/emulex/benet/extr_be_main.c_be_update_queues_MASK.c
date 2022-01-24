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
struct net_device {int dummy; } ;
struct be_adapter {int /*<<< orphan*/  if_flags; int /*<<< orphan*/  if_handle; int /*<<< orphan*/  num_msix_roce_vec; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_IF_FLAGS_ALL_PROMISCUOUS ; 
 int /*<<< orphan*/  FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct be_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_adapter*) ; 
 int FUNC6 (struct be_adapter*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_adapter*) ; 
 int FUNC9 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

int FUNC15(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int status;

	if (FUNC12(netdev)) {
		/* be_tx_timeout() must not run concurrently with this
		 * function, synchronize with an already-running dev_watchdog
		 */
		FUNC13(netdev);
		/* device cannot transmit now, avoid dev_watchdog timeouts */
		FUNC11(netdev);
		FUNC14(netdev);

		FUNC2(netdev);
	}

	FUNC0(adapter);

	/* If any vectors have been shared with RoCE we cannot re-program
	 * the MSIx table.
	 */
	if (!adapter->num_msix_roce_vec)
		FUNC5(adapter);

	FUNC1(adapter);
	status = FUNC3(adapter, adapter->if_handle,  0);
	if (status)
		return status;

	if (!FUNC10(adapter)) {
		status = FUNC6(adapter);
		if (status)
			return status;
	}

	status = FUNC4(adapter);
	if (status)
		return status;

	status = FUNC9(adapter);
	if (status)
		return status;

	FUNC8(adapter);

	/* The IF was destroyed and re-created. We need to clear
	 * all promiscuous flags valid for the destroyed IF.
	 * Without this promisc mode is not restored during
	 * be_open() because the driver thinks that it is
	 * already enabled in HW.
	 */
	adapter->if_flags &= ~BE_IF_FLAGS_ALL_PROMISCUOUS;

	if (FUNC12(netdev))
		status = FUNC7(netdev);

	return status;
}