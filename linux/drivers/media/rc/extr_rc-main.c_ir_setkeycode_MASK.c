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
struct rc_map {unsigned int len; int /*<<< orphan*/  lock; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct input_keymap_entry {int flags; unsigned int index; int /*<<< orphan*/  keycode; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int INPUT_KEYMAP_BY_INDEX ; 
 struct rc_dev* FUNC0 (struct input_dev*) ; 
 int FUNC1 (struct input_keymap_entry const*,unsigned int*) ; 
 unsigned int FUNC2 (struct rc_dev*,struct rc_map*,unsigned int,int) ; 
 unsigned int FUNC3 (struct rc_dev*,struct rc_map*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct input_dev *idev,
			 const struct input_keymap_entry *ke,
			 unsigned int *old_keycode)
{
	struct rc_dev *rdev = FUNC0(idev);
	struct rc_map *rc_map = &rdev->rc_map;
	unsigned int index;
	unsigned int scancode;
	int retval = 0;
	unsigned long flags;

	FUNC4(&rc_map->lock, flags);

	if (ke->flags & INPUT_KEYMAP_BY_INDEX) {
		index = ke->index;
		if (index >= rc_map->len) {
			retval = -EINVAL;
			goto out;
		}
	} else {
		retval = FUNC1(ke, &scancode);
		if (retval)
			goto out;

		index = FUNC2(rdev, rc_map, scancode, true);
		if (index >= rc_map->len) {
			retval = -ENOMEM;
			goto out;
		}
	}

	*old_keycode = FUNC3(rdev, rc_map, index, ke->keycode);

out:
	FUNC5(&rc_map->lock, flags);
	return retval;
}