#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  adapter_restart; TYPE_2__* ieee; TYPE_1__* net_dev; } ;
struct TYPE_4__ {int iw_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_IEEE80211 ; 
 int /*<<< orphan*/  ARPHRD_IEEE80211_RADIOTAP ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  IW_MODE_ADHOC 131 
#define  IW_MODE_AUTO 130 
#define  IW_MODE_INFRA 129 
#define  IW_MODE_MONITOR 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 struct ipw_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			   struct iw_request_info *info,
			   union iwreq_data *wrqu, char *extra)
{
	struct ipw_priv *priv = FUNC3(dev);
	int err = 0;

	FUNC0("Set MODE: %d\n", wrqu->mode);

	switch (wrqu->mode) {
#ifdef CONFIG_IPW2200_MONITOR
	case IW_MODE_MONITOR:
#endif
	case IW_MODE_ADHOC:
	case IW_MODE_INFRA:
		break;
	case IW_MODE_AUTO:
		wrqu->mode = IW_MODE_INFRA;
		break;
	default:
		return -EINVAL;
	}
	if (wrqu->mode == priv->ieee->iw_mode)
		return 0;

	FUNC4(&priv->mutex);

	FUNC2(priv, 0);

#ifdef CONFIG_IPW2200_MONITOR
	if (priv->ieee->iw_mode == IW_MODE_MONITOR)
		priv->net_dev->type = ARPHRD_ETHER;

	if (wrqu->mode == IW_MODE_MONITOR)
#ifdef CONFIG_IPW2200_RADIOTAP
		priv->net_dev->type = ARPHRD_IEEE80211_RADIOTAP;
#else
		priv->net_dev->type = ARPHRD_IEEE80211;
#endif
#endif				/* CONFIG_IPW2200_MONITOR */

	/* Free the existing firmware and reset the fw_loaded
	 * flag so ipw_load() will bring in the new firmware */
	FUNC1();

	priv->ieee->iw_mode = wrqu->mode;

	FUNC6(&priv->adapter_restart);
	FUNC5(&priv->mutex);
	return err;
}