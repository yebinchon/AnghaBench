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
struct nfp_cpp_area {int /*<<< orphan*/  refcount; TYPE_2__* cpp; } ;
struct TYPE_4__ {int /*<<< orphan*/  waitq; TYPE_1__* op; } ;
struct TYPE_3__ {int /*<<< orphan*/  area_acquire; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp_area*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp_area*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nfp_cpp_area *area)
{
	int err, status;

	if (FUNC1(&area->refcount) > 1)
		return 0;

	if (!area->cpp->op->area_acquire)
		return 0;

	err = FUNC5(area->cpp->waitq,
				       FUNC2(area, &status));
	if (!err)
		err = status;
	if (err) {
		FUNC4(area->cpp, "Warning: area wait failed: %d\n", err);
		FUNC0(&area->refcount);
		return err;
	}

	FUNC3(area);

	return 0;
}