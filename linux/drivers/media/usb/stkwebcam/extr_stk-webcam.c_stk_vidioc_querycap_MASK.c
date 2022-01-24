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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct stk_camera {int /*<<< orphan*/  udev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct stk_camera* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *filp,
		void *priv, struct v4l2_capability *cap)
{
	struct stk_camera *dev = FUNC2(filp);

	FUNC0(cap->driver, "stk", sizeof(cap->driver));
	FUNC0(cap->card, "stk", sizeof(cap->card));
	FUNC1(dev->udev, cap->bus_info, sizeof(cap->bus_info));
	return 0;
}