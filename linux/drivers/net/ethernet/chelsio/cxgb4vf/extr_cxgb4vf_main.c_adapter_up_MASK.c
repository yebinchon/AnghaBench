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
struct adapter {int flags; int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  name; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CXGB4VF_FULL_INIT_DONE ; 
 int CXGB4VF_USING_MSI ; 
 int CXGB4VF_USING_MSIX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adapter*) ; 
 int FUNC5 (struct adapter*) ; 
 int FUNC6 (struct adapter*) ; 
 int FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 

__attribute__((used)) static int FUNC11(struct adapter *adapter)
{
	int err;

	/*
	 * If this is the first time we've been called, perform basic
	 * adapter setup.  Once we've done this, many of our adapter
	 * parameters can no longer be changed ...
	 */
	if ((adapter->flags & CXGB4VF_FULL_INIT_DONE) == 0) {
		err = FUNC7(adapter);
		if (err)
			return err;
		err = FUNC6(adapter);
		if (err) {
			FUNC8(adapter);
			return err;
		}

		if (adapter->flags & CXGB4VF_USING_MSIX)
			FUNC3(adapter);

		adapter->flags |= CXGB4VF_FULL_INIT_DONE;
	}

	/*
	 * Acquire our interrupt resources.  We only support MSI-X and MSI.
	 */
	FUNC0((adapter->flags &
	       (CXGB4VF_USING_MSIX | CXGB4VF_USING_MSI)) == 0);
	if (adapter->flags & CXGB4VF_USING_MSIX)
		err = FUNC5(adapter);
	else
		err = FUNC4(adapter->pdev->irq,
				  FUNC9(adapter), 0,
				  adapter->name, adapter);
	if (err) {
		FUNC1(adapter->pdev_dev, "request_irq failed, err %d\n",
			err);
		return err;
	}

	/*
	 * Enable NAPI ingress processing and return success.
	 */
	FUNC2(adapter);
	FUNC10(adapter);

	return 0;
}