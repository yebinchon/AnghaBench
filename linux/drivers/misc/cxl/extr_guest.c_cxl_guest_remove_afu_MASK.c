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
struct cxl_afu {size_t slice; int /*<<< orphan*/  dev; int /*<<< orphan*/  current_mode; TYPE_1__* adapter; TYPE_2__* guest; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* afu_deactivate_mode ) (struct cxl_afu*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int handle_err; int /*<<< orphan*/  work_err; } ;
struct TYPE_4__ {int /*<<< orphan*/  afu_list_lock; int /*<<< orphan*/ ** afu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl_afu*) ; 
 TYPE_3__* cxl_ops ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cxl_afu*,int /*<<< orphan*/ ) ; 

void FUNC10(struct cxl_afu *afu)
{
	if (!afu)
		return;

	/* flush and stop pending job */
	afu->guest->handle_err = false;
	FUNC4(&afu->guest->work_err);

	FUNC1(afu);
	FUNC2(afu);

	FUNC7(&afu->adapter->afu_list_lock);
	afu->adapter->afu[afu->slice] = NULL;
	FUNC8(&afu->adapter->afu_list_lock);

	FUNC0(afu);
	cxl_ops->afu_deactivate_mode(afu, afu->current_mode);
	FUNC5(afu);
	FUNC6(afu);

	FUNC3(&afu->dev);
}