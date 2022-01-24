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
struct TYPE_2__ {int flags; int /*<<< orphan*/  value; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ retry; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  short_retry_limit; int /*<<< orphan*/  long_retry_limit; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int IW_RETRY_LIFETIME ; 
 int IW_RETRY_LIMIT ; 
 int IW_RETRY_LONG ; 
 int IW_RETRY_SHORT ; 
 int IW_RETRY_TYPE ; 
 struct ipw_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			    struct iw_request_info *info,
			    union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC1(dev);

	FUNC2(&priv->mutex);
	wrqu->retry.disabled = 0;

	if ((wrqu->retry.flags & IW_RETRY_TYPE) == IW_RETRY_LIFETIME) {
		FUNC3(&priv->mutex);
		return -EINVAL;
	}

	if (wrqu->retry.flags & IW_RETRY_LONG) {
		wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
		wrqu->retry.value = priv->long_retry_limit;
	} else if (wrqu->retry.flags & IW_RETRY_SHORT) {
		wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_SHORT;
		wrqu->retry.value = priv->short_retry_limit;
	} else {
		wrqu->retry.flags = IW_RETRY_LIMIT;
		wrqu->retry.value = priv->short_retry_limit;
	}
	FUNC3(&priv->mutex);

	FUNC0("GET retry -> %d\n", wrqu->retry.value);

	return 0;
}