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
struct v4l2_device {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 struct v4l2_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct v4l2_device *v4l2_dev)
{
	if (v4l2_dev->dev == NULL)
		return;

	if (FUNC0(v4l2_dev->dev) == v4l2_dev)
		FUNC1(v4l2_dev->dev, NULL);
	FUNC2(v4l2_dev->dev);
	v4l2_dev->dev = NULL;
}