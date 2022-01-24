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
struct cxl_afu_native {int dummy; } ;
struct cxl_afu {size_t slice; struct cxl_afu* native; int /*<<< orphan*/  dev; int /*<<< orphan*/  spa_mutex; } ;
struct cxl {struct cxl_afu** afu; int /*<<< orphan*/  adapter_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cxl_afu* FUNC0 (struct cxl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 int FUNC3 (struct cxl_afu*) ; 
 int FUNC4 (struct cxl_afu*) ; 
 int FUNC5 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cxl_afu*) ; 
 struct cxl_afu* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct cxl_afu*,struct cxl*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct cxl_afu*) ; 

__attribute__((used)) static int FUNC14(struct cxl *adapter, int slice, struct pci_dev *dev)
{
	struct cxl_afu *afu;
	int rc = -ENOMEM;

	afu = FUNC0(adapter, slice);
	if (!afu)
		return -ENOMEM;

	afu->native = FUNC10(sizeof(struct cxl_afu_native), GFP_KERNEL);
	if (!afu->native)
		goto err_free_afu;

	FUNC11(&afu->native->spa_mutex);

	rc = FUNC7(&afu->dev, "afu%i.%i", adapter->adapter_num, slice);
	if (rc)
		goto err_free_native;

	rc = FUNC12(afu, adapter, dev);
	if (rc)
		goto err_free_native;

	/* Don't care if this fails */
	FUNC1(afu);

	/*
	 * After we call this function we must not free the afu directly, even
	 * if it returns an error!
	 */
	if ((rc = FUNC4(afu)))
		goto err_put1;

	if ((rc = FUNC5(afu)))
		goto err_put1;

	adapter->afu[afu->slice] = afu;

	if ((rc = FUNC3(afu)))
		FUNC6(&afu->dev, "Can't register vPHB\n");

	return 0;

err_put1:
	FUNC13(afu);
	FUNC2(afu);
	FUNC8(&afu->dev);
	return rc;

err_free_native:
	FUNC9(afu->native);
err_free_afu:
	FUNC9(afu);
	return rc;

}