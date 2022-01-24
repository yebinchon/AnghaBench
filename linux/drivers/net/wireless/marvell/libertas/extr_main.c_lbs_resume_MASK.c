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
struct lbs_private {scalar_t__ setup_fw_on_resume; scalar_t__ dev; scalar_t__ deep_sleep_required; scalar_t__ mesh_dev; } ;

/* Variables and functions */
 int FUNC0 (struct lbs_private*,int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(struct lbs_private *priv)
{
	int ret;

	ret = FUNC1(priv, 0);

	FUNC4(priv->dev);
	if (priv->mesh_dev)
		FUNC4(priv->mesh_dev);

	if (priv->deep_sleep_required) {
		priv->deep_sleep_required = 0;
		ret = FUNC0(priv, 1);
		if (ret)
			FUNC3(priv->dev,
				   "deep sleep activation failed: %d\n", ret);
	}

	if (priv->setup_fw_on_resume)
		ret = FUNC2(priv);

	return ret;
}