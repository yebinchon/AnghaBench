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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dvsec_tl_pos; } ;
struct ocxl_fn {int /*<<< orphan*/  link; TYPE_1__ config; } ;

/* Variables and functions */
 int FUNC0 (struct ocxl_fn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct pci_dev*,TYPE_1__*) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct ocxl_fn*,struct pci_dev*) ; 
 int FUNC8 (struct ocxl_fn*) ; 

__attribute__((used)) static int FUNC9(struct ocxl_fn *fn, struct pci_dev *dev)
{
	int rc;

	rc = FUNC6(dev);
	if (rc) {
		FUNC1(&dev->dev, "pci_enable_device failed: %d\n", rc);
		return rc;
	}

	/*
	 * Once it has been confirmed to work on our hardware, we
	 * should reset the function, to force the adapter to restart
	 * from scratch.
	 * A function reset would also reset all its AFUs.
	 *
	 * Some hints for implementation:
	 *
	 * - there's not status bit to know when the reset is done. We
	 *   should try reading the config space to know when it's
	 *   done.
	 * - probably something like:
	 *	Reset
	 *	wait 100ms
	 *	issue config read
	 *	allow device up to 1 sec to return success on config
	 *	read before declaring it broken
	 *
	 * Some shared logic on the card (CFG, TLX) won't be reset, so
	 * there's no guarantee that it will be enough.
	 */
	rc = FUNC2(dev, &fn->config);
	if (rc)
		return rc;

	rc = FUNC7(fn, dev);
	if (rc)
		return rc;

	rc = FUNC0(fn);
	if (rc)
		return rc;

	rc = FUNC8(fn);
	if (rc)
		return rc;

	rc = FUNC5(dev, 0, &fn->link);
	if (rc)
		return rc;

	rc = FUNC3(dev, fn->config.dvsec_tl_pos);
	if (rc) {
		FUNC4(dev, fn->link);
		return rc;
	}
	return 0;
}