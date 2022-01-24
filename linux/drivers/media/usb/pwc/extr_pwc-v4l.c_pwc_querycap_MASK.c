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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct pwc_device {int /*<<< orphan*/  udev; TYPE_1__ vdev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWC_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pwc_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, struct v4l2_capability *cap)
{
	struct pwc_device *pdev = FUNC2(file);

	FUNC0(cap->driver, PWC_NAME, sizeof(cap->driver));
	FUNC0(cap->card, pdev->vdev.name, sizeof(cap->card));
	FUNC1(pdev->udev, cap->bus_info, sizeof(cap->bus_info));
	return 0;
}