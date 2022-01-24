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
struct pci_dev {int dummy; } ;
struct cxl_native {int dummy; } ;
struct cxl {int perst_loads_image; int perst_same_image; int /*<<< orphan*/  dev; int /*<<< orphan*/  native; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cxl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*) ; 
 struct cxl* FUNC2 () ; 
 int FUNC3 (struct cxl*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl*) ; 
 int FUNC7 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct cxl*,struct pci_dev*) ; 

__attribute__((used)) static struct cxl *FUNC14(struct pci_dev *dev)
{
	struct cxl *adapter;
	int rc;

	adapter = FUNC2();
	if (!adapter)
		return FUNC0(-ENOMEM);

	adapter->native = FUNC11(sizeof(struct cxl_native), GFP_KERNEL);
	if (!adapter->native) {
		rc = -ENOMEM;
		goto err_release;
	}

	FUNC13(adapter, dev);

	/* Set defaults for parameters which need to persist over
	 * configure/reconfigure
	 */
	adapter->perst_loads_image = true;
	adapter->perst_same_image = false;

	rc = FUNC3(adapter, dev);
	if (rc) {
		FUNC12(dev);
		goto err_release;
	}

	/* Don't care if this one fails: */
	FUNC4(adapter);

	/*
	 * After we call this function we must not free the adapter directly,
	 * even if it returns an error!
	 */
	if ((rc = FUNC7(adapter)))
		goto err_put1;

	if ((rc = FUNC9(adapter)))
		goto err_put1;

	/* Release the context lock as adapter is configured */
	FUNC1(adapter);

	return adapter;

err_put1:
	/* This should mirror cxl_remove_adapter, except without the
	 * sysfs parts
	 */
	FUNC5(adapter);
	FUNC6(adapter);
	FUNC10(&adapter->dev);
	return FUNC0(rc);

err_release:
	FUNC8(&adapter->dev);
	return FUNC0(rc);
}