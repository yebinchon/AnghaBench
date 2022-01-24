#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ value; int /*<<< orphan*/  fixed; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {scalar_t__ rts_threshold; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_RTS_THRESHOLD ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ MAX_RTS_THRESHOLD ; 
 scalar_t__ MIN_RTS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,scalar_t__) ; 
 struct ipw_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			  struct iw_request_info *info,
			  union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC2(dev);
	FUNC3(&priv->mutex);
	if (wrqu->rts.disabled || !wrqu->rts.fixed)
		priv->rts_threshold = DEFAULT_RTS_THRESHOLD;
	else {
		if (wrqu->rts.value < MIN_RTS_THRESHOLD ||
		    wrqu->rts.value > MAX_RTS_THRESHOLD) {
			FUNC4(&priv->mutex);
			return -EINVAL;
		}
		priv->rts_threshold = wrqu->rts.value;
	}

	FUNC1(priv, priv->rts_threshold);
	FUNC4(&priv->mutex);
	FUNC0("SET RTS Threshold -> %d\n", priv->rts_threshold);
	return 0;
}