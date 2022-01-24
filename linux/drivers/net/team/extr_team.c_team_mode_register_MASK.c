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
struct team_mode_item {int /*<<< orphan*/  list; struct team_mode const* mode; } ;
struct team_mode {scalar_t__ priv_size; int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TEAM_MODE_PRIV_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct team_mode_item*) ; 
 struct team_mode_item* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mode_list ; 
 int /*<<< orphan*/  mode_list_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(const struct team_mode *mode)
{
	int err = 0;
	struct team_mode_item *mitem;

	if (!FUNC1(mode->kind) ||
	    mode->priv_size > TEAM_MODE_PRIV_SIZE)
		return -EINVAL;

	mitem = FUNC3(sizeof(*mitem), GFP_KERNEL);
	if (!mitem)
		return -ENOMEM;

	FUNC5(&mode_list_lock);
	if (FUNC0(mode->kind)) {
		err = -EEXIST;
		FUNC2(mitem);
		goto unlock;
	}
	mitem->mode = mode;
	FUNC4(&mitem->list, &mode_list);
unlock:
	FUNC6(&mode_list_lock);
	return err;
}