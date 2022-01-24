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
struct nfp_cpp_area {int /*<<< orphan*/  mutex; int /*<<< orphan*/  refcount; TYPE_2__* cpp; } ;
struct TYPE_4__ {TYPE_1__* op; } ;
struct TYPE_3__ {int (* area_acquire ) (struct nfp_cpp_area*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp_area*) ; 
 int FUNC5 (struct nfp_cpp_area*) ; 

int FUNC6(struct nfp_cpp_area *area)
{
	FUNC2(&area->mutex);
	if (FUNC1(&area->refcount) == 1) {
		if (area->cpp->op->area_acquire) {
			int err;

			err = area->cpp->op->area_acquire(area);
			if (err < 0) {
				FUNC0(&area->refcount);
				FUNC3(&area->mutex);
				return err;
			}
		}
	}
	FUNC3(&area->mutex);

	FUNC4(area);
	return 0;
}