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
typedef  int u8 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct mwifiex_802_11d_domain_reg {int* country_code; int no_of_triplet; scalar_t__ triplet; } ;
struct ieee80211_country_ie_triplet {int dummy; } ;
struct cfg80211_bss {int dummy; } ;
struct TYPE_2__ {int* country_code; struct mwifiex_802_11d_domain_reg domain_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11D_DOMAIN_INFO ; 
 int IEEE80211_COUNTRY_IE_MIN_LEN ; 
 int IEEE80211_COUNTRY_STRING_LEN ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  WLAN_EID_COUNTRY ; 
 int* FUNC0 (struct cfg80211_bss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 scalar_t__ FUNC4 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 

__attribute__((used)) static int FUNC8(struct mwifiex_private *priv,
				      struct cfg80211_bss *bss)
{
	const u8 *country_ie;
	u8 country_ie_len;
	struct mwifiex_802_11d_domain_reg *domain_info =
					&priv->adapter->domain_reg;

	FUNC5();
	country_ie = FUNC0(bss, WLAN_EID_COUNTRY);
	if (!country_ie) {
		FUNC6();
		return 0;
	}

	country_ie_len = country_ie[1];
	if (country_ie_len < IEEE80211_COUNTRY_IE_MIN_LEN) {
		FUNC6();
		return 0;
	}

	if (!FUNC7(priv->adapter->country_code, &country_ie[2], 2)) {
		FUNC6();
		FUNC2(priv->adapter, INFO,
			    "11D: skip setting domain info in FW\n");
		return 0;
	}
	FUNC1(priv->adapter->country_code, &country_ie[2], 2);

	domain_info->country_code[0] = country_ie[2];
	domain_info->country_code[1] = country_ie[3];
	domain_info->country_code[2] = ' ';

	country_ie_len -= IEEE80211_COUNTRY_STRING_LEN;

	domain_info->no_of_triplet =
		country_ie_len / sizeof(struct ieee80211_country_ie_triplet);

	FUNC1((u8 *)domain_info->triplet,
	       &country_ie[2] + IEEE80211_COUNTRY_STRING_LEN, country_ie_len);

	FUNC6();

	if (FUNC4(priv, HostCmd_CMD_802_11D_DOMAIN_INFO,
			     HostCmd_ACT_GEN_SET, 0, NULL, false)) {
		FUNC2(priv->adapter, ERROR,
			    "11D: setting domain info in FW fail\n");
		return -1;
	}

	FUNC3(priv);

	return 0;
}