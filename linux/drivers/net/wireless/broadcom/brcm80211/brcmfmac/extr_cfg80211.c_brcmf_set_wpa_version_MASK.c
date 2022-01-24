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
struct net_device {int dummy; } ;
struct TYPE_2__ {int wpa_versions; } ;
struct cfg80211_connect_params {TYPE_1__ crypto; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_cfg80211_security {int wpa_versions; } ;
struct brcmf_cfg80211_profile {struct brcmf_cfg80211_security sec; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CONN ; 
 int NL80211_WPA_VERSION_1 ; 
 int NL80211_WPA_VERSION_2 ; 
 int WPA2_AUTH_PSK ; 
 int WPA2_AUTH_UNSPECIFIED ; 
 int WPA_AUTH_DISABLED ; 
 int WPA_AUTH_PSK ; 
 int WPA_AUTH_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct brcmf_if*,char*,int) ; 
 struct brcmf_cfg80211_profile* FUNC3 (struct net_device*) ; 
 struct brcmf_if* FUNC4 (struct net_device*) ; 

__attribute__((used)) static s32 FUNC5(struct net_device *ndev,
				 struct cfg80211_connect_params *sme)
{
	struct brcmf_if *ifp = FUNC4(ndev);
	struct brcmf_cfg80211_profile *profile = FUNC3(ndev);
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_cfg80211_security *sec;
	s32 val = 0;
	s32 err = 0;

	if (sme->crypto.wpa_versions & NL80211_WPA_VERSION_1)
		val = WPA_AUTH_PSK | WPA_AUTH_UNSPECIFIED;
	else if (sme->crypto.wpa_versions & NL80211_WPA_VERSION_2)
		val = WPA2_AUTH_PSK | WPA2_AUTH_UNSPECIFIED;
	else
		val = WPA_AUTH_DISABLED;
	FUNC1(CONN, "setting wpa_auth to 0x%0x\n", val);
	err = FUNC2(ifp, "wpa_auth", val);
	if (err) {
		FUNC0(drvr, "set wpa_auth failed (%d)\n", err);
		return err;
	}
	sec = &profile->sec;
	sec->wpa_versions = sme->crypto.wpa_versions;
	return err;
}