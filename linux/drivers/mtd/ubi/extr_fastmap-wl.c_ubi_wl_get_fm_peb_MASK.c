#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rb; } ;
struct ubi_wl_entry {TYPE_1__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  rb_node; } ;
struct ubi_device {int free_count; int beb_rsvd_pebs; TYPE_2__ free; } ;

/* Variables and functions */
 struct ubi_wl_entry* FUNC0 (TYPE_2__*) ; 
 struct ubi_wl_entry* FUNC1 (struct ubi_device*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device*,struct ubi_wl_entry*,TYPE_2__*) ; 

struct ubi_wl_entry *FUNC4(struct ubi_device *ubi, int anchor)
{
	struct ubi_wl_entry *e = NULL;

	if (!ubi->free.rb_node || (ubi->free_count - ubi->beb_rsvd_pebs < 1))
		goto out;

	if (anchor)
		e = FUNC0(&ubi->free);
	else
		e = FUNC1(ubi, &ubi->free);

	if (!e)
		goto out;

	FUNC3(ubi, e, &ubi->free);

	/* remove it from the free list,
	 * the wl subsystem does no longer know this erase block */
	FUNC2(&e->u.rb, &ubi->free);
	ubi->free_count--;
out:
	return e;
}