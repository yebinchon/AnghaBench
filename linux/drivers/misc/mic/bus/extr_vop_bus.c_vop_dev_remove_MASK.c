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
struct vop_driver {int /*<<< orphan*/  (* remove ) (struct vop_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct vop_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct vop_device* FUNC0 (struct device*) ; 
 struct vop_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vop_device*) ; 

__attribute__((used)) static int FUNC3(struct device *d)
{
	struct vop_device *dev = FUNC0(d);
	struct vop_driver *drv = FUNC1(dev->dev.driver);

	drv->remove(dev);
	return 0;
}