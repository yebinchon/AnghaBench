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
struct lbs_private {int deep_sleep_required; scalar_t__ mesh_dev; scalar_t__ dev; scalar_t__ is_deep_sleep; } ;

/* Variables and functions */
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int FUNC4(struct lbs_private *priv)
{
	int ret;

	if (priv->is_deep_sleep) {
		ret = FUNC0(priv, 0);
		if (ret) {
			FUNC2(priv->dev,
				   "deep sleep cancellation failed: %d\n", ret);
			return ret;
		}
		priv->deep_sleep_required = 1;
	}

	ret = FUNC1(priv, 1);

	FUNC3(priv->dev);
	if (priv->mesh_dev)
		FUNC3(priv->mesh_dev);

	return ret;
}