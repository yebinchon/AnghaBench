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
struct TYPE_2__ {int dev; } ;
struct mei_device {TYPE_1__ cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mei_class ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 

void FUNC4(struct mei_device *dev)
{
	int devno;

	devno = dev->cdev.dev;
	FUNC0(&dev->cdev);

	FUNC2(dev);

	FUNC1(mei_class, devno);

	FUNC3(dev);
}