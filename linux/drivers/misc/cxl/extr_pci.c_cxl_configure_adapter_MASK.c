#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct cxl {int tunneled_ops_supported; TYPE_3__* native; TYPE_1__ dev; } ;
struct TYPE_6__ {TYPE_2__* sl_ops; } ;
struct TYPE_5__ {int (* adapter_regs_init ) (struct cxl*,struct pci_dev*) ;int /*<<< orphan*/  capi_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPAL_PHB_CAPI_MODE_SNOOP_ON ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,struct pci_dev*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct cxl*,struct pci_dev*) ; 
 int FUNC3 (struct cxl*) ; 
 int FUNC4 (struct cxl*,struct pci_dev*) ; 
 int /*<<< orphan*/  cxl_release_adapter ; 
 int /*<<< orphan*/  FUNC5 (struct cxl*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl*) ; 
 int FUNC7 (struct cxl*) ; 
 int FUNC8 (struct cxl*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct cxl*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int,int) ; 
 int FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct cxl*) ; 
 int FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct cxl*,struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC20(struct cxl *adapter, struct pci_dev *dev)
{
	int rc;

	adapter->dev.parent = &dev->dev;
	adapter->dev.release = cxl_release_adapter;
	FUNC12(dev, adapter);

	rc = FUNC11(dev);
	if (rc) {
		FUNC9(&dev->dev, "pci_enable_device failed: %i\n", rc);
		return rc;
	}

	if ((rc = FUNC4(adapter, dev)))
		return rc;

	if ((rc = FUNC8(adapter, dev)))
	        return rc;

	FUNC0(adapter, dev);

	if ((rc = FUNC17(dev)))
		return rc;

	if ((rc = FUNC19(dev)))
		return rc;

	if ((rc = FUNC7(adapter)))
		return rc;

	if ((rc = FUNC2(adapter, dev)))
		return rc;

	if ((rc = FUNC16(adapter)))
		goto err;

	if ((rc = adapter->native->sl_ops->adapter_regs_init(adapter, dev)))
		goto err;

	/* Required for devices using CAPP DMA mode, harmless for others */
	FUNC13(dev);

	adapter->tunneled_ops_supported = false;

	if (FUNC1()) {
		if (FUNC14(dev, 0x00020000E0000000ull, 1))
			FUNC10(&dev->dev, "Tunneled operations unsupported\n");
		else
			adapter->tunneled_ops_supported = true;
	}

	if ((rc = FUNC15(dev, adapter->native->sl_ops->capi_mode)))
		goto err;

	/* If recovery happened, the last step is to turn on snooping.
	 * In the non-recovery case this has no effect */
	if ((rc = FUNC15(dev, OPAL_PHB_CAPI_MODE_SNOOP_ON)))
		goto err;

	/* Ignore error, adapter init is not dependant on timebase sync */
	FUNC5(adapter, dev);

	if ((rc = FUNC3(adapter)))
		goto err;

	return 0;

err:
	FUNC6(adapter);
	return rc;

}