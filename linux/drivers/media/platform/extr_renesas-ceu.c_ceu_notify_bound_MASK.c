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
struct v4l2_subdev {int dummy; } ;
struct v4l2_device {int dummy; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {struct v4l2_device* v4l2_dev; } ;
struct ceu_subdev {struct v4l2_subdev* v4l2_sd; } ;
struct ceu_device {int /*<<< orphan*/  num_sd; } ;

/* Variables and functions */
 struct ceu_subdev* FUNC0 (struct v4l2_async_subdev*) ; 
 struct ceu_device* FUNC1 (struct v4l2_device*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_async_notifier *notifier,
			    struct v4l2_subdev *v4l2_sd,
			    struct v4l2_async_subdev *asd)
{
	struct v4l2_device *v4l2_dev = notifier->v4l2_dev;
	struct ceu_device *ceudev = FUNC1(v4l2_dev);
	struct ceu_subdev *ceu_sd = FUNC0(asd);

	ceu_sd->v4l2_sd = v4l2_sd;
	ceudev->num_sd++;

	return 0;
}