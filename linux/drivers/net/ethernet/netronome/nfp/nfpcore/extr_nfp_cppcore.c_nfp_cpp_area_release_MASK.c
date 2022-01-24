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
struct nfp_cpp_area {int /*<<< orphan*/  mutex; TYPE_2__* cpp; int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  waitq; TYPE_1__* op; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* area_release ) (struct nfp_cpp_area*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp_area*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp_area*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nfp_cpp_area *area)
{
	FUNC1(&area->mutex);
	/* Only call the release on refcount == 0 */
	if (FUNC0(&area->refcount)) {
		if (area->cpp->op->area_release) {
			area->cpp->op->area_release(area);
			/* Let anyone waiting for a BAR try to get one.. */
			FUNC5(&area->cpp->waitq);
		}
	}
	FUNC2(&area->mutex);

	FUNC3(area);
}