#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct efx_self_tests {int dummy; } ;
struct efx_nic {scalar_t__ state; TYPE_1__* net_dev; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_UP ; 
 scalar_t__ STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,struct efx_self_tests*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct efx_nic*,struct efx_self_tests*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_self_tests*) ; 
 struct efx_self_tests* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct efx_nic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,TYPE_1__*,char*,char*,...) ; 

__attribute__((used)) static void FUNC9(struct net_device *net_dev,
				  struct ethtool_test *test, u64 *data)
{
	struct efx_nic *efx = FUNC6(net_dev);
	struct efx_self_tests *efx_tests;
	bool already_up;
	int rc = -ENOMEM;

	efx_tests = FUNC5(sizeof(*efx_tests), GFP_KERNEL);
	if (!efx_tests)
		goto fail;

	if (efx->state != STATE_READY) {
		rc = -EBUSY;
		goto out;
	}

	FUNC8(efx, drv, efx->net_dev, "starting %sline testing\n",
		   (test->flags & ETH_TEST_FL_OFFLINE) ? "off" : "on");

	/* We need rx buffers and interrupts. */
	already_up = (efx->net_dev->flags & IFF_UP);
	if (!already_up) {
		rc = FUNC1(efx->net_dev, NULL);
		if (rc) {
			FUNC7(efx, drv, efx->net_dev,
				  "failed opening device.\n");
			goto out;
		}
	}

	rc = FUNC3(efx, efx_tests, test->flags);

	if (!already_up)
		FUNC0(efx->net_dev);

	FUNC8(efx, drv, efx->net_dev, "%s %sline self-tests\n",
		   rc == 0 ? "passed" : "failed",
		   (test->flags & ETH_TEST_FL_OFFLINE) ? "off" : "on");

out:
	FUNC2(efx, efx_tests, NULL, data);
	FUNC4(efx_tests);
fail:
	if (rc)
		test->flags |= ETH_TEST_FL_FAILED;
}