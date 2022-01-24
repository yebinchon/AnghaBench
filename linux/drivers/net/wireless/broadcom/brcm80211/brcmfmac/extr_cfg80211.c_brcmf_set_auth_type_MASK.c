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
struct net_device {int dummy; } ;
struct cfg80211_connect_params {int auth_type; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_cfg80211_security {int auth_type; } ;
struct brcmf_cfg80211_profile {struct brcmf_cfg80211_security sec; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CONN ; 
#define  NL80211_AUTHTYPE_OPEN_SYSTEM 129 
#define  NL80211_AUTHTYPE_SHARED_KEY 128 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
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

	switch (sme->auth_type) {
	case NL80211_AUTHTYPE_OPEN_SYSTEM:
		val = 0;
		FUNC1(CONN, "open system\n");
		break;
	case NL80211_AUTHTYPE_SHARED_KEY:
		val = 1;
		FUNC1(CONN, "shared key\n");
		break;
	default:
		val = 2;
		FUNC1(CONN, "automatic, auth type (%d)\n", sme->auth_type);
		break;
	}

	err = FUNC2(ifp, "auth", val);
	if (err) {
		FUNC0(drvr, "set auth failed (%d)\n", err);
		return err;
	}
	sec = &profile->sec;
	sec->auth_type = sme->auth_type;
	return err;
}