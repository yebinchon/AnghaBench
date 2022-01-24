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
struct list_head {int dummy; } ;
struct ubi_attach_info {int alien_peb_count; struct list_head alien; struct list_head erase; struct list_head free; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_ainf_peb {int vol_id; int lnum; TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct ubi_ainf_peb* FUNC4 (struct ubi_attach_info*,int,int) ; 

__attribute__((used)) static int FUNC5(struct ubi_attach_info *ai, int pnum, int vol_id,
		       int lnum, int ec, int to_head, struct list_head *list)
{
	struct ubi_ainf_peb *aeb;

	if (list == &ai->free) {
		FUNC1("add to free: PEB %d, EC %d", pnum, ec);
	} else if (list == &ai->erase) {
		FUNC1("add to erase: PEB %d, EC %d", pnum, ec);
	} else if (list == &ai->alien) {
		FUNC1("add to alien: PEB %d, EC %d", pnum, ec);
		ai->alien_peb_count += 1;
	} else
		FUNC0();

	aeb = FUNC4(ai, pnum, ec);
	if (!aeb)
		return -ENOMEM;

	aeb->vol_id = vol_id;
	aeb->lnum = lnum;
	if (to_head)
		FUNC2(&aeb->u.list, list);
	else
		FUNC3(&aeb->u.list, list);
	return 0;
}