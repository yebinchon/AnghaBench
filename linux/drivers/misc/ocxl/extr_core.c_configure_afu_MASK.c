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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct ocxl_afu {int /*<<< orphan*/  config; TYPE_1__* fn; } ;
struct TYPE_2__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int FUNC0 (struct ocxl_afu*) ; 
 int FUNC1 (struct ocxl_afu*) ; 
 int FUNC2 (struct ocxl_afu*) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC5 (struct ocxl_afu*) ; 

__attribute__((used)) static int FUNC6(struct ocxl_afu *afu, u8 afu_idx, struct pci_dev *dev)
{
	int rc;

	rc = FUNC3(dev, &afu->fn->config, &afu->config, afu_idx);
	if (rc)
		return rc;

	rc = FUNC0(afu);
	if (rc)
		return rc;

	rc = FUNC1(afu);
	if (rc)
		goto err_free_actag;

	rc = FUNC2(afu);
	if (rc)
		goto err_free_pasid;

	return 0;

err_free_pasid:
	FUNC5(afu);
err_free_actag:
	FUNC4(afu);
	return rc;
}