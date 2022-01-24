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
struct ov772x_priv {int power_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  win; int /*<<< orphan*/  cfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ov772x_priv*) ; 
 int FUNC4 (struct ov772x_priv*) ; 
 int FUNC5 (struct ov772x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ov772x_priv* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int on)
{
	struct ov772x_priv *priv = FUNC6(sd);
	int ret = 0;

	FUNC1(&priv->lock);

	/* If the power count is modified from 0 to != 0 or from != 0 to 0,
	 * update the power state.
	 */
	if (priv->power_count == !on) {
		if (on) {
			ret = FUNC4(priv);
			/*
			 * Restore the format, the frame rate, and
			 * the controls
			 */
			if (!ret)
				ret = FUNC5(priv, priv->cfmt,
							priv->win);
		} else {
			ret = FUNC3(priv);
		}
	}

	if (!ret) {
		/* Update the power count. */
		priv->power_count += on ? 1 : -1;
		FUNC0(priv->power_count < 0, "Unbalanced power count\n");
		FUNC0(priv->power_count > 1, "Duplicated s_power call\n");
	}

	FUNC2(&priv->lock);

	return ret;
}