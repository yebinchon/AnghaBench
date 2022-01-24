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
struct net_device {int /*<<< orphan*/  name; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; TYPE_1__* pdev; int /*<<< orphan*/  int_mode; struct e1000_hw hw; struct net_device* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000E_INT_MODE_LEGACY ; 
 int /*<<< orphan*/  E1000_ICS_RXSEQ ; 
 int FLAG_MSI_TEST_FAILED ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  ICS ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  e1000_intr_msi_test ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct e1000_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct e1000_hw *hw = &adapter->hw;
	int err;

	/* poll_enable hasn't been called yet, so don't need disable */
	/* clear any pending events */
	FUNC9(ICR);

	/* free the real vector and request a test handler */
	FUNC0(adapter);
	FUNC4(adapter);

	/* Assume that the test fails, if it succeeds then the test
	 * MSI irq handler will unset this flag
	 */
	adapter->flags |= FLAG_MSI_TEST_FAILED;

	err = FUNC14(adapter->pdev);
	if (err)
		goto msi_test_failed;

	err = FUNC15(adapter->pdev->irq, e1000_intr_msi_test, 0,
			  netdev->name, netdev);
	if (err) {
		FUNC13(adapter->pdev);
		goto msi_test_failed;
	}

	/* Force memory writes to complete before enabling and firing an
	 * interrupt.
	 */
	FUNC17();

	FUNC2(adapter);

	/* fire an unusual interrupt on the test handler */
	FUNC10(ICS, E1000_ICS_RXSEQ);
	FUNC6();
	FUNC12(100);

	FUNC1(adapter);

	FUNC16();			/* read flags after interrupt has been fired */

	if (adapter->flags & FLAG_MSI_TEST_FAILED) {
		adapter->int_mode = E1000E_INT_MODE_LEGACY;
		FUNC8("MSI interrupt test failed, using legacy interrupt.\n");
	} else {
		FUNC7("MSI interrupt test succeeded!\n");
	}

	FUNC11(adapter->pdev->irq, netdev);
	FUNC13(adapter->pdev);

msi_test_failed:
	FUNC5(adapter);
	return FUNC3(adapter);
}