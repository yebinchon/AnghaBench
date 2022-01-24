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
struct cxl_afu {int modes_supported; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int (* afu_activate_mode ) (struct cxl_afu*,int) ;} ;

/* Variables and functions */
 int CXL_MODE_DEDICATED ; 
 int CXL_MODE_DIRECTED ; 
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct cxl_afu*,int) ; 
 int FUNC2 (struct cxl_afu*,int) ; 

int FUNC3(struct cxl_afu *afu)
{
	if (afu->modes_supported & CXL_MODE_DIRECTED)
		return cxl_ops->afu_activate_mode(afu, CXL_MODE_DIRECTED);

	if (afu->modes_supported & CXL_MODE_DEDICATED)
		return cxl_ops->afu_activate_mode(afu, CXL_MODE_DEDICATED);

	FUNC0(&afu->dev, "No supported programming modes available\n");
	/* We don't fail this so the user can inspect sysfs */
	return 0;
}