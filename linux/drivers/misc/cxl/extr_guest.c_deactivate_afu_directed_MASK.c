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
struct cxl_afu {scalar_t__ num_procs; scalar_t__ current_mode; int /*<<< orphan*/  slice; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* afu_reset ) (struct cxl_afu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 TYPE_1__* cxl_ops ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_afu*) ; 

__attribute__((used)) static int FUNC4(struct cxl_afu *afu)
{
	FUNC2(&afu->dev, "Deactivating AFU(%d) directed mode\n", afu->slice);

	afu->current_mode = 0;
	afu->num_procs = 0;

	FUNC1(afu);
	FUNC0(afu);

	cxl_ops->afu_reset(afu);

	return 0;
}