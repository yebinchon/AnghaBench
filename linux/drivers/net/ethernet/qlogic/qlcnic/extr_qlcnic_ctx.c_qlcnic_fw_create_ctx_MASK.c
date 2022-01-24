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
struct qlcnic_adapter {int flags; int drv_tx_rings; TYPE_1__* ahw; int /*<<< orphan*/  state; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {scalar_t__ diag_test; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_LOOPBACK_TEST ; 
 int QLCNIC_MSIX_ENABLED ; 
 int QLCNIC_NEED_FLR ; 
 int /*<<< orphan*/  __QLCNIC_FW_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 int FUNC5 (struct qlcnic_adapter*,int) ; 
 scalar_t__ FUNC6 (struct qlcnic_adapter*) ; 
 int FUNC7 (struct qlcnic_adapter*) ; 
 int FUNC8 (struct qlcnic_adapter*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct qlcnic_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct qlcnic_adapter *dev)
{
	int i, err, ring;

	if (dev->flags & QLCNIC_NEED_FLR) {
		FUNC0(dev->pdev);
		dev->flags &= ~QLCNIC_NEED_FLR;
	}

	if (FUNC4(dev) && (dev->flags & QLCNIC_MSIX_ENABLED)) {
		if (dev->ahw->diag_test != QLCNIC_LOOPBACK_TEST) {
			err = FUNC5(dev, 1);
			if (err)
				return err;
		}
	}

	if (FUNC1(dev) && (dev->flags & QLCNIC_MSIX_ENABLED) &&
	    FUNC6(dev) && !dev->ahw->diag_test) {
		err = FUNC3(dev, 1);
		if (err)
			return err;
	}

	err = FUNC7(dev);
	if (err)
		goto err_out;

	for (ring = 0; ring < dev->drv_tx_rings; ring++) {
		err = FUNC8(dev,
						  &dev->tx_ring[ring],
						  ring);
		if (err) {
			FUNC9(dev);
			if (ring == 0)
				goto err_out;

			for (i = 0; i < ring; i++)
				FUNC10(dev, &dev->tx_ring[i]);

			goto err_out;
		}
	}

	FUNC11(__QLCNIC_FW_ATTACHED, &dev->state);

	return 0;

err_out:
	if (FUNC1(dev) && (dev->flags & QLCNIC_MSIX_ENABLED) &&
	    FUNC6(dev) && !dev->ahw->diag_test)
			FUNC2(dev, 0);

	if (FUNC4(dev) && (dev->flags & QLCNIC_MSIX_ENABLED)) {
		if (dev->ahw->diag_test != QLCNIC_LOOPBACK_TEST)
			FUNC5(dev, 0);
	}

	return err;
}