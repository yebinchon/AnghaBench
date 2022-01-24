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
struct device {int dummy; } ;
struct cosm_driver {int (* probe ) (struct cosm_device*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct cosm_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct cosm_device* FUNC0 (struct device*) ; 
 struct cosm_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cosm_device*) ; 

__attribute__((used)) static int FUNC3(struct device *d)
{
	struct cosm_device *dev = FUNC0(d);
	struct cosm_driver *drv = FUNC1(dev->dev.driver);

	return drv->probe(dev);
}