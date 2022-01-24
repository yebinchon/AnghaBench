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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct rcar_csi2 {int /*<<< orphan*/  dev; int /*<<< orphan*/ * remote; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rcar_csi2* FUNC1 (struct v4l2_async_notifier*) ; 

__attribute__((used)) static void FUNC2(struct v4l2_async_notifier *notifier,
				struct v4l2_subdev *subdev,
				struct v4l2_async_subdev *asd)
{
	struct rcar_csi2 *priv = FUNC1(notifier);

	priv->remote = NULL;

	FUNC0(priv->dev, "Unbind %s\n", subdev->name);
}