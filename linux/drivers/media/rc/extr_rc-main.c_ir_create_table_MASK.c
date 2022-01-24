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
typedef  int /*<<< orphan*/  u64 ;
struct rc_map_table {int dummy; } ;
struct rc_map {int alloc; int size; int /*<<< orphan*/ * name; int /*<<< orphan*/  scan; int /*<<< orphan*/  rc_proto; } ;
struct rc_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (size_t) ; 

__attribute__((used)) static int FUNC5(struct rc_dev *dev, struct rc_map *rc_map,
			   const char *name, u64 rc_proto, size_t size)
{
	rc_map->name = FUNC3(name, GFP_KERNEL);
	if (!rc_map->name)
		return -ENOMEM;
	rc_map->rc_proto = rc_proto;
	rc_map->alloc = FUNC4(size * sizeof(struct rc_map_table));
	rc_map->size = rc_map->alloc / sizeof(struct rc_map_table);
	rc_map->scan = FUNC2(rc_map->alloc, GFP_KERNEL);
	if (!rc_map->scan) {
		FUNC1(rc_map->name);
		rc_map->name = NULL;
		return -ENOMEM;
	}

	FUNC0(&dev->dev, "Allocated space for %u keycode entries (%u bytes)\n",
		rc_map->size, rc_map->alloc);
	return 0;
}