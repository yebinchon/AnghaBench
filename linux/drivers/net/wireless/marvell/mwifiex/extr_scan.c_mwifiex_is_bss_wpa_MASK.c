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
struct TYPE_2__ {int /*<<< orphan*/  wpa2_enabled; scalar_t__ wpa_enabled; int /*<<< orphan*/  wep_enabled; } ;
struct mwifiex_private {TYPE_1__ sec_info; } ;
struct mwifiex_bssdescriptor {int /*<<< orphan*/  bcn_wpa_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  WLAN_EID_VENDOR_SPECIFIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct mwifiex_private*,struct mwifiex_bssdescriptor*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(struct mwifiex_private *priv,
		   struct mwifiex_bssdescriptor *bss_desc)
{
	if (!priv->sec_info.wep_enabled && priv->sec_info.wpa_enabled &&
	    !priv->sec_info.wpa2_enabled &&
	    FUNC1(bss_desc->bcn_wpa_ie, WLAN_EID_VENDOR_SPECIFIC)
	   /*
	    * Privacy bit may NOT be set in some APs like
	    * LinkSys WRT54G && bss_desc->privacy
	    */
	 ) {
		FUNC0(INFO, "WPA", priv, bss_desc);
		return true;
	}
	return false;
}