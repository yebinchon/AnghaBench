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
struct lbs_private {TYPE_1__* wdev; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_2__ {int const iftype; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_MONITOR 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  SNMP_MIB_OID_BSS_TYPE ; 
 int FUNC0 (struct lbs_private*,int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct lbs_private *priv, enum nl80211_iftype type)
{
	int ret = 0;

	switch (type) {
	case NL80211_IFTYPE_MONITOR:
		ret = FUNC0(priv, 1);
		break;
	case NL80211_IFTYPE_STATION:
		if (priv->wdev->iftype == NL80211_IFTYPE_MONITOR)
			ret = FUNC0(priv, 0);
		if (!ret)
			ret = FUNC1(priv, SNMP_MIB_OID_BSS_TYPE, 1);
		break;
	case NL80211_IFTYPE_ADHOC:
		if (priv->wdev->iftype == NL80211_IFTYPE_MONITOR)
			ret = FUNC0(priv, 0);
		if (!ret)
			ret = FUNC1(priv, SNMP_MIB_OID_BSS_TYPE, 2);
		break;
	default:
		ret = -ENOTSUPP;
	}
	return ret;
}