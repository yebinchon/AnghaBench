#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct ocxl_fn {TYPE_1__ dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  class; int /*<<< orphan*/  devt; TYPE_1__* parent; } ;
struct ocxl_file_info {TYPE_3__ dev; struct ocxl_afu* afu; } ;
struct TYPE_7__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  name; } ;
struct ocxl_afu {TYPE_2__ config; struct ocxl_fn* fn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ocxl_file_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocxl_file_info*) ; 
 int /*<<< orphan*/  info_release ; 
 int /*<<< orphan*/  FUNC8 (struct ocxl_file_info*) ; 
 struct ocxl_file_info* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocxl_afu*,struct ocxl_file_info*) ; 
 int /*<<< orphan*/  ocxl_class ; 
 int /*<<< orphan*/  ocxl_dev ; 
 int FUNC13 (struct ocxl_file_info*) ; 
 int FUNC14 (struct ocxl_file_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct ocxl_file_info*) ; 
 struct pci_dev* FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct ocxl_afu *afu)
{
	int minor;
	int rc;
	struct ocxl_file_info *info;
	struct ocxl_fn *fn = afu->fn;
	struct pci_dev *pci_dev = FUNC16(fn->dev.parent);

	info = FUNC9(sizeof(*info), GFP_KERNEL);
	if (info == NULL)
		return -ENOMEM;

	minor = FUNC2(info);
	if (minor < 0) {
		FUNC8(info);
		return minor;
	}

	info->dev.parent = &fn->dev;
	info->dev.devt = FUNC1(FUNC0(ocxl_dev), minor);
	info->dev.class = ocxl_class;
	info->dev.release = info_release;

	info->afu = afu;
	FUNC10(afu);

	rc = FUNC4(&info->dev, "%s.%s.%hhu",
		afu->config.name, FUNC3(&pci_dev->dev), afu->config.idx);
	if (rc)
		goto err_put;

	rc = FUNC5(&info->dev);
	if (rc)
		goto err_put;

	rc = FUNC14(info);
	if (rc)
		goto err_unregister;

	rc = FUNC13(info);
	if (rc)
		goto err_unregister;

	FUNC12(afu, info);

	return 0;

err_unregister:
	FUNC15(info); // safe to call even if register failed
	FUNC6(&info->dev);
err_put:
	FUNC11(afu);
	FUNC7(info);
	FUNC8(info);
	return rc;
}