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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int power_mode; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IPW_POWER_AC ; 
 int IPW_POWER_ENABLED ; 
 int FUNC1 (int) ; 
 int IPW_POWER_LIMIT ; 
 int FUNC2 (struct ipw_priv*,int) ; 
 struct ipw_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				struct iw_request_info *info,
				union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC3(dev);
	int mode = *(int *)extra;
	int err;

	FUNC4(&priv->mutex);
	if ((mode < 1) || (mode > IPW_POWER_LIMIT))
		mode = IPW_POWER_AC;

	if (FUNC1(priv->power_mode) != mode) {
		err = FUNC2(priv, mode);
		if (err) {
			FUNC0("failed setting power mode.\n");
			FUNC5(&priv->mutex);
			return err;
		}
		priv->power_mode = IPW_POWER_ENABLED | mode;
	}
	FUNC5(&priv->mutex);
	return 0;
}