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
struct team_mode_item {struct team_mode* mode; } ;
struct team_mode {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 struct team_mode_item* FUNC0 (char const*) ; 
 int /*<<< orphan*/  mode_list_lock ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct team_mode *FUNC5(const char *kind)
{
	struct team_mode_item *mitem;
	const struct team_mode *mode = NULL;

	FUNC2(&mode_list_lock);
	mitem = FUNC0(kind);
	if (!mitem) {
		FUNC3(&mode_list_lock);
		FUNC1("team-mode-%s", kind);
		FUNC2(&mode_list_lock);
		mitem = FUNC0(kind);
	}
	if (mitem) {
		mode = mitem->mode;
		if (!FUNC4(mode->owner))
			mode = NULL;
	}

	FUNC3(&mode_list_lock);
	return mode;
}