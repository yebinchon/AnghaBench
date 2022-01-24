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
struct cxl_process_element {int dummy; } ;
struct cxl_afu {scalar_t__ num_procs; TYPE_1__* native; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int spa_order; scalar_t__ spa_max_procs; unsigned int spa_size; struct cxl_process_element* spa; } ;

/* Variables and functions */
 int CXL_MODE_DEDICATED ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct cxl_afu *afu, int mode)
{
	unsigned spa_size;

	/* Work out how many pages to allocate */
	afu->native->spa_order = -1;
	do {
		afu->native->spa_order++;
		spa_size = (1 << afu->native->spa_order) * PAGE_SIZE;

		if (spa_size > 0x100000) {
			FUNC1(&afu->dev, "num_of_processes too large for the SPA, limiting to %i (0x%x)\n",
					afu->native->spa_max_procs, afu->native->spa_size);
			if (mode != CXL_MODE_DEDICATED)
				afu->num_procs = afu->native->spa_max_procs;
			break;
		}

		afu->native->spa_size = spa_size;
		afu->native->spa_max_procs = FUNC4(afu->native->spa_size);
	} while (afu->native->spa_max_procs < afu->num_procs);

	if (!(afu->native->spa = (struct cxl_process_element *)
	      FUNC0(GFP_KERNEL | __GFP_ZERO, afu->native->spa_order))) {
		FUNC3("cxl_alloc_spa: Unable to allocate scheduled process area\n");
		return -ENOMEM;
	}
	FUNC2("spa pages: %i afu->spa_max_procs: %i   afu->num_procs: %i\n",
		 1<<afu->native->spa_order, afu->native->spa_max_procs, afu->num_procs);

	return 0;
}