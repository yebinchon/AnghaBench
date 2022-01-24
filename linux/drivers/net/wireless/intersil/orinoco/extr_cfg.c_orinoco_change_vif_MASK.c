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
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct orinoco_private {int iw_mode; int /*<<< orphan*/  broken_monitor; int /*<<< orphan*/  has_port3; int /*<<< orphan*/  has_ibss; } ;
struct net_device {int dummy; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  force_monitor ; 
 int FUNC0 (struct orinoco_private*) ; 
 scalar_t__ FUNC1 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct orinoco_private*) ; 
 struct orinoco_private* FUNC4 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*,char*) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy, struct net_device *dev,
			      enum nl80211_iftype type,
			      struct vif_params *params)
{
	struct orinoco_private *priv = FUNC4(wiphy);
	int err = 0;
	unsigned long lock;

	if (FUNC1(priv, &lock) != 0)
		return -EBUSY;

	switch (type) {
	case NL80211_IFTYPE_ADHOC:
		if (!priv->has_ibss && !priv->has_port3)
			err = -EINVAL;
		break;

	case NL80211_IFTYPE_STATION:
		break;

	case NL80211_IFTYPE_MONITOR:
		if (priv->broken_monitor && !force_monitor) {
			FUNC5(wiphy,
				   "Monitor mode support is buggy in this firmware, not enabling\n");
			err = -EINVAL;
		}
		break;

	default:
		err = -EINVAL;
	}

	if (!err) {
		priv->iw_mode = type;
		FUNC3(priv);
		err = FUNC0(priv);
	}

	FUNC2(priv, &lock);

	return err;
}