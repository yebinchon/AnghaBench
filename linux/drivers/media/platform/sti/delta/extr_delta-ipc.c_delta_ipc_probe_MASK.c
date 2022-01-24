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
struct rpmsg_driver {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct rpmsg_device {TYPE_1__ dev; } ;
struct delta_dev {struct rpmsg_device* rpmsg_device; } ;

/* Variables and functions */
 struct delta_dev* FUNC0 (struct rpmsg_driver*) ; 
 struct rpmsg_driver* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rpmsg_device *rpmsg_device)
{
	struct rpmsg_driver *rpdrv = FUNC1(rpmsg_device->dev.driver);
	struct delta_dev *delta = FUNC0(rpdrv);

	delta->rpmsg_device = rpmsg_device;

	return 0;
}