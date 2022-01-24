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
struct uvc_device {int dummy; } ;
struct uvc_control_mapping {int menu_count; int /*<<< orphan*/  name; int /*<<< orphan*/  list; int /*<<< orphan*/ * set; int /*<<< orphan*/ * get; struct uvc_control_mapping const* menu_info; int /*<<< orphan*/  ev_subs; } ;
struct TYPE_2__ {int /*<<< orphan*/  selector; int /*<<< orphan*/  entity; int /*<<< orphan*/  mappings; } ;
struct uvc_control {TYPE_1__ info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UVC_TRACE_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_control_mapping*) ; 
 void* FUNC2 (struct uvc_control_mapping const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * uvc_get_le_value ; 
 int /*<<< orphan*/ * uvc_set_le_value ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct uvc_device *dev,
	struct uvc_control *ctrl, const struct uvc_control_mapping *mapping)
{
	struct uvc_control_mapping *map;
	unsigned int size;

	/* Most mappings come from static kernel data and need to be duplicated.
	 * Mappings that come from userspace will be unnecessarily duplicated,
	 * this could be optimized.
	 */
	map = FUNC2(mapping, sizeof(*mapping), GFP_KERNEL);
	if (map == NULL)
		return -ENOMEM;

	FUNC0(&map->ev_subs);

	size = sizeof(*mapping->menu_info) * mapping->menu_count;
	map->menu_info = FUNC2(mapping->menu_info, size, GFP_KERNEL);
	if (map->menu_info == NULL) {
		FUNC1(map);
		return -ENOMEM;
	}

	if (map->get == NULL)
		map->get = uvc_get_le_value;
	if (map->set == NULL)
		map->set = uvc_set_le_value;

	FUNC3(&map->list, &ctrl->info.mappings);
	FUNC4(UVC_TRACE_CONTROL,
		"Adding mapping '%s' to control %pUl/%u.\n",
		map->name, ctrl->info.entity, ctrl->info.selector);

	return 0;
}