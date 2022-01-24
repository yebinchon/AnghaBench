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
struct zr364xx_camera {TYPE_1__* udev; } ;
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ product; } ;

/* Variables and functions */
 scalar_t__ DRIVER_DESC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct zr364xx_camera* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				   struct v4l2_capability *cap)
{
	struct zr364xx_camera *cam = FUNC2(file);

	FUNC1(cap->driver, DRIVER_DESC, sizeof(cap->driver));
	if (cam->udev->product)
		FUNC1(cap->card, cam->udev->product, sizeof(cap->card));
	FUNC1(cap->bus_info, FUNC0(&cam->udev->dev),
		sizeof(cap->bus_info));
	return 0;
}