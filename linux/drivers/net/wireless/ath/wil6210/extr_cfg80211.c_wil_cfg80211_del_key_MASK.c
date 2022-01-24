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
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct wil_sta_info {int dummy; } ;
struct wil6210_vif {int /*<<< orphan*/  mid; } ;
struct wil6210_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum wmi_key_usage { ____Placeholder_wmi_key_usage } wmi_key_usage ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wil_sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil_sta_info*) ; 
 int /*<<< orphan*/ * key_usage_str ; 
 struct wil6210_vif* FUNC2 (struct net_device*) ; 
 struct wireless_dev* FUNC3 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct wil6210_priv*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,struct wil_sta_info*) ; 
 int FUNC6 (struct wireless_dev*,int) ; 
 struct wil_sta_info* FUNC7 (struct wil6210_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wil6210_priv* FUNC9 (struct wiphy*) ; 
 int FUNC10 (struct wil6210_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC11(struct wiphy *wiphy,
				struct net_device *ndev,
				u8 key_index, bool pairwise,
				const u8 *mac_addr)
{
	struct wil6210_vif *vif = FUNC2(ndev);
	struct wil6210_priv *wil = FUNC9(wiphy);
	struct wireless_dev *wdev = FUNC3(vif);
	enum wmi_key_usage key_usage = FUNC6(wdev, pairwise);
	struct wil_sta_info *cs = FUNC7(wil, vif->mid,
							    key_usage,
							    mac_addr);

	FUNC4(wil, "del_key: %pM %s[%d]\n", mac_addr,
		     key_usage_str[key_usage], key_index);

	if (FUNC0(cs))
		FUNC8(wil, "Not connected, %pM %s[%d]\n",
			 mac_addr, key_usage_str[key_usage], key_index);

	if (!FUNC1(cs))
		FUNC5(key_index, key_usage, cs);

	return FUNC10(vif, key_index, mac_addr, key_usage);
}