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
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int /*<<< orphan*/  sd; } ;
struct mipid02_dev {int /*<<< orphan*/ * s_subdev; } ;

/* Variables and functions */
 struct mipid02_dev* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct v4l2_async_notifier *notifier,
				 struct v4l2_subdev *s_subdev,
				 struct v4l2_async_subdev *asd)
{
	struct mipid02_dev *bridge = FUNC0(notifier->sd);

	bridge->s_subdev = NULL;
}