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
struct TYPE_3__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct cxl_afu {int slice; struct cxl* adapter; int /*<<< orphan*/  irqs_max; int /*<<< orphan*/  prefault_mode; int /*<<< orphan*/  configured_state; int /*<<< orphan*/  afu_cntl_lock; int /*<<< orphan*/  contexts_lock; int /*<<< orphan*/  contexts_idr; TYPE_1__ dev; } ;
struct cxl {int /*<<< orphan*/  user_irqs; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  release_afu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PREFAULT_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* cxl_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cxl_afu* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct cxl_afu *FUNC5(struct cxl *adapter, int slice)
{
	struct cxl_afu *afu;

	if (!(afu = FUNC2(sizeof(struct cxl_afu), GFP_KERNEL)))
		return NULL;

	afu->adapter = adapter;
	afu->dev.parent = &adapter->dev;
	afu->dev.release = cxl_ops->release_afu;
	afu->slice = slice;
	FUNC1(&afu->contexts_idr);
	FUNC3(&afu->contexts_lock);
	FUNC4(&afu->afu_cntl_lock);
	FUNC0(&afu->configured_state, -1);
	afu->prefault_mode = CXL_PREFAULT_NONE;
	afu->irqs_max = afu->adapter->user_irqs;

	return afu;
}