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
struct lbs_private {int is_deep_sleep; int (* enter_deep_sleep ) (struct lbs_private*) ;int (* exit_deep_sleep ) (struct lbs_private*) ;int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct lbs_private*) ; 
 int FUNC7 (struct lbs_private*) ; 

int FUNC8(struct lbs_private *priv, int deep_sleep)
{
	int ret =  0;

	if (deep_sleep) {
		if (priv->is_deep_sleep != 1) {
			FUNC1("deep sleep: sleep\n");
			FUNC0(!priv->enter_deep_sleep);
			ret = priv->enter_deep_sleep(priv);
			if (!ret) {
				FUNC5(priv->dev);
				FUNC4(priv->dev);
			}
		} else {
			FUNC3(priv->dev, "deep sleep: already enabled\n");
		}
	} else {
		if (priv->is_deep_sleep) {
			FUNC1("deep sleep: wakeup\n");
			FUNC0(!priv->exit_deep_sleep);
			ret = priv->exit_deep_sleep(priv);
			if (!ret) {
				ret = FUNC2(priv);
				if (ret)
					FUNC3(priv->dev,
						   "deep sleep: wakeup failed\n");
			}
		}
	}

	return ret;
}