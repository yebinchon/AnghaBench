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
struct TYPE_2__ {int /*<<< orphan*/  rb; } ;
struct ubi_wl_entry {int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; TYPE_1__ u; } ;
struct ubi_device {int /*<<< orphan*/  free_count; int /*<<< orphan*/  free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubi_wl_entry* FUNC1 (struct ubi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,struct ubi_wl_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubi_device*,char*) ; 

__attribute__((used)) static struct ubi_wl_entry *FUNC5(struct ubi_device *ubi)
{
	struct ubi_wl_entry *e;

	e = FUNC1(ubi, &ubi->free);
	if (!e) {
		FUNC4(ubi, "no free eraseblocks");
		return NULL;
	}

	FUNC3(ubi, e, &ubi->free);

	/*
	 * Move the physical eraseblock to the protection queue where it will
	 * be protected from being moved for some time.
	 */
	FUNC2(&e->u.rb, &ubi->free);
	ubi->free_count--;
	FUNC0("PEB %d EC %d", e->pnum, e->ec);

	return e;
}