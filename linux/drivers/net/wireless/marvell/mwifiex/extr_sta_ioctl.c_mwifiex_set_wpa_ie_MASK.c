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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_2__ {int wpa_enabled; int wpa2_enabled; } ;
struct mwifiex_private {scalar_t__* wpa_ie; int wpa_ie_len; TYPE_1__ sec_info; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ WLAN_EID_RSN ; 
 scalar_t__ WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct mwifiex_private *priv,
			      u8 *ie_data_ptr, u16 ie_len)
{
	if (ie_len) {
		if (ie_len > sizeof(priv->wpa_ie)) {
			FUNC2(priv->adapter, ERROR,
				    "failed to copy WPA IE, too big\n");
			return -1;
		}
		FUNC0(priv->wpa_ie, ie_data_ptr, ie_len);
		priv->wpa_ie_len = ie_len;
		FUNC2(priv->adapter, CMD,
			    "cmd: Set Wpa_ie_len=%d IE=%#x\n",
			    priv->wpa_ie_len, priv->wpa_ie[0]);

		if (priv->wpa_ie[0] == WLAN_EID_VENDOR_SPECIFIC) {
			priv->sec_info.wpa_enabled = true;
		} else if (priv->wpa_ie[0] == WLAN_EID_RSN) {
			priv->sec_info.wpa2_enabled = true;
		} else {
			priv->sec_info.wpa_enabled = false;
			priv->sec_info.wpa2_enabled = false;
		}
	} else {
		FUNC1(priv->wpa_ie, 0, sizeof(priv->wpa_ie));
		priv->wpa_ie_len = 0;
		FUNC2(priv->adapter, INFO,
			    "info: reset wpa_ie_len=%d IE=%#x\n",
			    priv->wpa_ie_len, priv->wpa_ie[0]);
		priv->sec_info.wpa_enabled = false;
		priv->sec_info.wpa2_enabled = false;
	}

	return 0;
}