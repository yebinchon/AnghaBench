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
struct rc_map_table {int /*<<< orphan*/  scancode; int /*<<< orphan*/  keycode; } ;
struct rc_map {unsigned int len; int /*<<< orphan*/  lock; struct rc_map_table* scan; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_keymap_entry {int flags; unsigned int index; int len; int /*<<< orphan*/  keycode; int /*<<< orphan*/  scancode; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int INPUT_KEYMAP_BY_INDEX ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 struct rc_dev* FUNC0 (struct input_dev*) ; 
 int FUNC1 (struct input_keymap_entry*,unsigned int*) ; 
 unsigned int FUNC2 (struct rc_map*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct input_dev *idev,
			 struct input_keymap_entry *ke)
{
	struct rc_dev *rdev = FUNC0(idev);
	struct rc_map *rc_map = &rdev->rc_map;
	struct rc_map_table *entry;
	unsigned long flags;
	unsigned int index;
	unsigned int scancode;
	int retval;

	FUNC4(&rc_map->lock, flags);

	if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
		index = ke->index;
	} else {
		retval = FUNC1(ke, &scancode);
		if (retval)
			goto out;

		index = FUNC2(rc_map, scancode);
	}

	if (index < rc_map->len) {
		entry = &rc_map->scan[index];

		ke->index = index;
		ke->keycode = entry->keycode;
		ke->len = sizeof(entry->scancode);
		FUNC3(ke->scancode, &entry->scancode, sizeof(entry->scancode));

	} else if (!(ke->flags & INPUT_KEYMAP_BY_INDEX)) {
		/*
		 * We do not really know the valid range of scancodes
		 * so let's respond with KEY_RESERVED to anything we
		 * do not have mapping for [yet].
		 */
		ke->index = index;
		ke->keycode = KEY_RESERVED;
	} else {
		retval = -EINVAL;
		goto out;
	}

	retval = 0;

out:
	FUNC5(&rc_map->lock, flags);
	return retval;
}