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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int flags; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {scalar_t__ bss_type; int /*<<< orphan*/  adapter; scalar_t__ media_connected; } ;
typedef  enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MSG ; 
 scalar_t__ MWIFIEX_BSS_TYPE_STA ; 
 int MWIFIEX_TDLS_DISABLE_LINK ; 
 int MWIFIEX_TDLS_ENABLE_LINK ; 
#define  NL80211_TDLS_DISABLE_LINK 132 
#define  NL80211_TDLS_DISCOVERY_REQ 131 
#define  NL80211_TDLS_ENABLE_LINK 130 
#define  NL80211_TDLS_SETUP 129 
#define  NL80211_TDLS_TEARDOWN 128 
 int WIPHY_FLAG_SUPPORTS_TDLS ; 
 int WIPHY_FLAG_TDLS_EXTERNAL_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct mwifiex_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct mwifiex_private*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC3(struct wiphy *wiphy, struct net_device *dev,
			   const u8 *peer, enum nl80211_tdls_operation action)
{
	struct mwifiex_private *priv = FUNC1(dev);

	if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS) ||
	    !(wiphy->flags & WIPHY_FLAG_TDLS_EXTERNAL_SETUP))
		return -ENOTSUPP;

	/* make sure we are in station mode and connected */
	if (!(priv->bss_type == MWIFIEX_BSS_TYPE_STA && priv->media_connected))
		return -ENOTSUPP;

	FUNC0(priv->adapter, MSG,
		    "TDLS peer=%pM, oper=%d\n", peer, action);

	switch (action) {
	case NL80211_TDLS_ENABLE_LINK:
		action = MWIFIEX_TDLS_ENABLE_LINK;
		break;
	case NL80211_TDLS_DISABLE_LINK:
		action = MWIFIEX_TDLS_DISABLE_LINK;
		break;
	case NL80211_TDLS_TEARDOWN:
		/* shouldn't happen!*/
		FUNC0(priv->adapter, ERROR,
			    "tdls_oper: teardown from driver not supported\n");
		return -EINVAL;
	case NL80211_TDLS_SETUP:
		/* shouldn't happen!*/
		FUNC0(priv->adapter, ERROR,
			    "tdls_oper: setup from driver not supported\n");
		return -EINVAL;
	case NL80211_TDLS_DISCOVERY_REQ:
		/* shouldn't happen!*/
		FUNC0(priv->adapter, ERROR,
			    "tdls_oper: discovery from driver not supported\n");
		return -EINVAL;
	default:
		FUNC0(priv->adapter, ERROR,
			    "tdls_oper: operation not supported\n");
		return -ENOTSUPP;
	}

	return FUNC2(priv, peer, action);
}