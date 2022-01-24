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
struct ocxl_fn {int dummy; } ;
struct ocxl_afu {struct ocxl_fn* fn; int /*<<< orphan*/  contexts_idr; int /*<<< orphan*/  afu_control_lock; int /*<<< orphan*/  contexts_lock; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ocxl_afu* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocxl_fn*) ; 

__attribute__((used)) static struct ocxl_afu *FUNC5(struct ocxl_fn *fn)
{
	struct ocxl_afu *afu;

	afu = FUNC2(sizeof(struct ocxl_afu), GFP_KERNEL);
	if (!afu)
		return NULL;

	FUNC1(&afu->kref);
	FUNC3(&afu->contexts_lock);
	FUNC3(&afu->afu_control_lock);
	FUNC0(&afu->contexts_idr);
	afu->fn = fn;
	FUNC4(fn);
	return afu;
}