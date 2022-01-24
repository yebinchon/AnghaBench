#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rc_map_table {unsigned int keycode; } ;
struct input_keymap_entry {unsigned int keycode; } ;
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct TYPE_4__ {unsigned int rc_map_size; struct rc_map_table* rc_map_table; } ;
struct TYPE_5__ {TYPE_1__ legacy; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {TYPE_3__ props; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct dvb_usb_device* FUNC2 (struct input_dev*) ; 
 unsigned int FUNC3 (struct input_keymap_entry const*,struct rc_map_table*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev,
				     const struct input_keymap_entry *ke,
				     unsigned int *old_keycode)
{
	struct dvb_usb_device *d = FUNC2(dev);
	struct rc_map_table *keymap = d->props.rc.legacy.rc_map_table;
	unsigned int keymap_size = d->props.rc.legacy.rc_map_size;
	unsigned int index;

	index = FUNC3(ke, keymap, keymap_size);
	/*
	 * FIXME: Currently, it is not possible to increase the size of
	 * scancode table. For it to happen, one possibility
	 * would be to allocate a table with key_map_size + 1,
	 * copying data, appending the new key on it, and freeing
	 * the old one - or maybe just allocating some spare space
	 */
	if (index >= keymap_size)
		return -EINVAL;

	*old_keycode = keymap[index].keycode;
	keymap->keycode = ke->keycode;
	FUNC1(ke->keycode, dev->keybit);

	if (*old_keycode != KEY_RESERVED) {
		FUNC0(*old_keycode, dev->keybit);
		for (index = 0; index < keymap_size; index++) {
			if (keymap[index].keycode == *old_keycode) {
				FUNC1(*old_keycode, dev->keybit);
				break;
			}
		}
	}

	return 0;
}