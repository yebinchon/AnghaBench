#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct team_mode_item {int /*<<< orphan*/  list; } ;
struct team_mode {int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 struct team_mode_item* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct team_mode_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mode_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(const struct team_mode *mode)
{
	struct team_mode_item *mitem;

	FUNC3(&mode_list_lock);
	mitem = FUNC0(mode->kind);
	if (mitem) {
		FUNC2(&mitem->list);
		FUNC1(mitem);
	}
	FUNC4(&mode_list_lock);
}