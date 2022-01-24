#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct cxl_guest {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct cxl {int psl_timebase_synced; TYPE_2__ dev; TYPE_1__* guest; scalar_t__ slices; } ;
struct TYPE_3__ {struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cxl* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*) ; 
 struct cxl* FUNC2 () ; 
 int FUNC3 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC4 (struct cxl*) ; 
 int FUNC5 (struct cxl*,struct device_node*) ; 
 int FUNC6 (struct cxl*,struct device_node*) ; 
 int FUNC7 (struct cxl*) ; 
 int FUNC8 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct cxl*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct cxl*) ; 
 TYPE_1__* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cxl*) ; 
 int /*<<< orphan*/  release_adapter ; 

struct cxl *FUNC14(struct device_node *np, struct platform_device *pdev)
{
	struct cxl *adapter;
	bool free = true;
	int rc;

	if (!(adapter = FUNC2()))
		return FUNC0(-ENOMEM);

	if (!(adapter->guest = FUNC12(sizeof(struct cxl_guest), GFP_KERNEL))) {
		FUNC11(adapter);
		return FUNC0(-ENOMEM);
	}

	adapter->slices = 0;
	adapter->guest->pdev = pdev;
	adapter->dev.parent = &pdev->dev;
	adapter->dev.release = release_adapter;
	FUNC9(&pdev->dev, adapter);

	/*
	 * Hypervisor controls PSL timebase initialization (p1 register).
	 * On FW840, PSL is initialized.
	 */
	adapter->psl_timebase_synced = true;

	if ((rc = FUNC5(adapter, np)))
		goto err1;

	if ((rc = FUNC6(adapter, np)))
		goto err1;

	if ((rc = FUNC13(adapter)))
		goto err1;

	if ((rc = FUNC3(adapter)))
		goto err1;

	/*
	 * After we call this function we must not free the adapter directly,
	 * even if it returns an error!
	 */
	if ((rc = FUNC7(adapter)))
		goto err_put1;

	if ((rc = FUNC8(adapter)))
		goto err_put1;

	/* release the context lock as the adapter is configured */
	FUNC1(adapter);

	return adapter;

err_put1:
	FUNC10(&adapter->dev);
	free = false;
	FUNC4(adapter);
err1:
	if (free)
		FUNC11(adapter);
	return FUNC0(rc);
}