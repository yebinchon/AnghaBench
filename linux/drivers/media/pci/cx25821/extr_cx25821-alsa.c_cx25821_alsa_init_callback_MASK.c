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
struct v4l2_device {int dummy; } ;
struct device {int dummy; } ;
struct cx25821_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cx25821_dev*) ; 
 struct v4l2_device* FUNC1 (struct device*) ; 
 struct cx25821_dev* FUNC2 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct v4l2_device *v4l2_dev = FUNC1(dev);
	struct cx25821_dev *cxdev = FUNC2(v4l2_dev);

	FUNC0(cxdev);
	return 0;
}