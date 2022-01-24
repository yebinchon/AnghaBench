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
struct TYPE_2__ {int /*<<< orphan*/  rb_node; } ;
struct ubi_device {int /*<<< orphan*/  wl_lock; scalar_t__ works_count; TYPE_1__ free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ubi_device *ubi)
{
	int err;

	while (!ubi->free.rb_node && ubi->works_count) {
		FUNC3(&ubi->wl_lock);

		FUNC0("do one work synchronously");
		err = FUNC1(ubi);

		FUNC2(&ubi->wl_lock);
		if (err)
			return err;
	}

	return 0;
}