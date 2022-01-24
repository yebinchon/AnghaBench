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
struct rc_map {unsigned int size; unsigned int len; TYPE_1__* scan; int /*<<< orphan*/  rc_proto; int /*<<< orphan*/  name; } ;
struct rc_dev {struct rc_map rc_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  keycode; int /*<<< orphan*/  scancode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct rc_dev*,struct rc_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct rc_dev*,struct rc_map*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*,struct rc_map*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rc_dev *dev,
			  const struct rc_map *from)
{
	struct rc_map *rc_map = &dev->rc_map;
	unsigned int i, index;
	int rc;

	rc = FUNC0(dev, rc_map, from->name, from->rc_proto,
			     from->size);
	if (rc)
		return rc;

	for (i = 0; i < from->size; i++) {
		index = FUNC1(dev, rc_map,
					      from->scan[i].scancode, false);
		if (index >= rc_map->len) {
			rc = -ENOMEM;
			break;
		}

		FUNC3(dev, rc_map, index,
				  from->scan[i].keycode);
	}

	if (rc)
		FUNC2(rc_map);

	return rc;
}