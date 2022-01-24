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
struct vop_device_id {scalar_t__ device; } ;
struct vop_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct vop_device_id* id_table; } ;

/* Variables and functions */
 struct vop_device* FUNC0 (struct device*) ; 
 TYPE_1__* FUNC1 (struct device_driver*) ; 
 scalar_t__ FUNC2 (struct vop_device*,struct vop_device_id const*) ; 

__attribute__((used)) static int FUNC3(struct device *dv, struct device_driver *dr)
{
	unsigned int i;
	struct vop_device *dev = FUNC0(dv);
	const struct vop_device_id *ids;

	ids = FUNC1(dr)->id_table;
	for (i = 0; ids[i].device; i++)
		if (FUNC2(dev, &ids[i]))
			return 1;
	return 0;
}