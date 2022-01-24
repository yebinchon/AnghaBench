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
struct rcar_csi2 {int stream_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  remote; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rcar_csi2*) ; 
 int /*<<< orphan*/  FUNC3 (struct rcar_csi2*) ; 
 struct rcar_csi2* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, int enable)
{
	struct rcar_csi2 *priv = FUNC4(sd);
	int ret = 0;

	FUNC0(&priv->lock);

	if (!priv->remote) {
		ret = -ENODEV;
		goto out;
	}

	if (enable && priv->stream_count == 0) {
		ret = FUNC2(priv);
		if (ret)
			goto out;
	} else if (!enable && priv->stream_count == 1) {
		FUNC3(priv);
	}

	priv->stream_count += enable ? 1 : -1;
out:
	FUNC1(&priv->lock);

	return ret;
}