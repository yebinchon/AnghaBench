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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_wl_entry {int /*<<< orphan*/  pnum; TYPE_1__ u; } ;
struct ubi_device {struct ubi_wl_entry** lookuptbl; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ubi_device*,struct ubi_wl_entry*) ; 

__attribute__((used)) static int FUNC3(struct ubi_device *ubi, int pnum)
{
	struct ubi_wl_entry *e;

	e = ubi->lookuptbl[pnum];
	if (!e)
		return -ENODEV;

	if (FUNC2(ubi, e))
		return -ENODEV;

	FUNC1(&e->u.list);
	FUNC0("deleted PEB %d from the protection queue", e->pnum);
	return 0;
}