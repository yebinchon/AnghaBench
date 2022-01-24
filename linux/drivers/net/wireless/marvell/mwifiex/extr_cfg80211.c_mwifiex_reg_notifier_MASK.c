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
struct regulatory_request {int initiator; int /*<<< orphan*/ * alpha2; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {char* country_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
#define  NL80211_REGDOM_SET_BY_CORE 131 
#define  NL80211_REGDOM_SET_BY_COUNTRY_IE 130 
#define  NL80211_REGDOM_SET_BY_DRIVER 129 
#define  NL80211_REGDOM_SET_BY_USER 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int) ; 
 struct mwifiex_adapter* FUNC1 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC6 (struct wiphy*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC8(struct wiphy *wiphy,
				 struct regulatory_request *request)
{
	struct mwifiex_adapter *adapter = FUNC1(wiphy);
	struct mwifiex_private *priv = FUNC4(adapter,
							MWIFIEX_BSS_ROLE_ANY);
	FUNC2(adapter, INFO,
		    "info: cfg80211 regulatory domain callback for %c%c\n",
		    request->alpha2[0], request->alpha2[1]);
	FUNC5(wiphy);

	switch (request->initiator) {
	case NL80211_REGDOM_SET_BY_DRIVER:
	case NL80211_REGDOM_SET_BY_CORE:
	case NL80211_REGDOM_SET_BY_USER:
	case NL80211_REGDOM_SET_BY_COUNTRY_IE:
		break;
	default:
		FUNC2(adapter, ERROR,
			    "unknown regdom initiator: %d\n",
			    request->initiator);
		return;
	}

	/* Don't send world or same regdom info to firmware */
	if (FUNC7(request->alpha2, "00", 2) &&
	    FUNC7(request->alpha2, adapter->country_code,
		    sizeof(request->alpha2))) {
		FUNC0(adapter->country_code, request->alpha2,
		       sizeof(request->alpha2));
		FUNC6(wiphy);
		FUNC3(priv);
	}
}