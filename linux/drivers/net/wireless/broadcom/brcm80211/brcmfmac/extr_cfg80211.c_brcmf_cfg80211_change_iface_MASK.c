#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct vif_params {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  bsscfgidx; struct brcmf_cfg80211_vif* vif; } ;
struct TYPE_6__ {scalar_t__ iftype; } ;
struct brcmf_cfg80211_vif {TYPE_3__ wdev; } ;
struct TYPE_4__ {scalar_t__ p2pdev_dynamically; } ;
struct brcmf_cfg80211_info {TYPE_1__ p2p; struct brcmf_pub* pub; } ;
typedef  int s32 ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_5__ {int iftype; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_SET_INFRA ; 
 int /*<<< orphan*/  BRCMF_FIL_P2P_IF_GO ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  INFO ; 
#define  NL80211_IFTYPE_ADHOC 133 
#define  NL80211_IFTYPE_AP 132 
#define  NL80211_IFTYPE_MONITOR 131 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
#define  NL80211_IFTYPE_P2P_GO 130 
#define  NL80211_IFTYPE_STATION 129 
#define  NL80211_IFTYPE_WDS 128 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct brcmf_if*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct brcmf_cfg80211_vif*) ; 
 int FUNC5 (struct brcmf_cfg80211_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct brcmf_cfg80211_info*,struct brcmf_cfg80211_vif*,int) ; 
 struct brcmf_if* FUNC7 (struct net_device*) ; 
 struct brcmf_cfg80211_info* FUNC8 (struct wiphy*) ; 

__attribute__((used)) static s32
FUNC9(struct wiphy *wiphy, struct net_device *ndev,
			 enum nl80211_iftype type,
			 struct vif_params *params)
{
	struct brcmf_cfg80211_info *cfg = FUNC8(wiphy);
	struct brcmf_if *ifp = FUNC7(ndev);
	struct brcmf_cfg80211_vif *vif = ifp->vif;
	struct brcmf_pub *drvr = cfg->pub;
	s32 infra = 0;
	s32 ap = 0;
	s32 err = 0;

	FUNC2(TRACE, "Enter, bsscfgidx=%d, type=%d\n", ifp->bsscfgidx,
		  type);

	/* WAR: There are a number of p2p interface related problems which
	 * need to be handled initially (before doing the validate).
	 * wpa_supplicant tends to do iface changes on p2p device/client/go
	 * which are not always possible/allowed. However we need to return
	 * OK otherwise the wpa_supplicant wont start. The situation differs
	 * on configuration and setup (p2pon=1 module param). The first check
	 * is to see if the request is a change to station for p2p iface.
	 */
	if ((type == NL80211_IFTYPE_STATION) &&
	    ((vif->wdev.iftype == NL80211_IFTYPE_P2P_CLIENT) ||
	     (vif->wdev.iftype == NL80211_IFTYPE_P2P_GO) ||
	     (vif->wdev.iftype == NL80211_IFTYPE_P2P_DEVICE))) {
		FUNC2(TRACE, "Ignoring cmd for p2p if\n");
		/* Now depending on whether module param p2pon=1 was used the
		 * response needs to be either 0 or EOPNOTSUPP. The reason is
		 * that if p2pon=1 is used, but a newer supplicant is used then
		 * we should return an error, as this combination wont work.
		 * In other situations 0 is returned and supplicant will start
		 * normally. It will give a trace in cfg80211, but it is the
		 * only way to get it working. Unfortunately this will result
		 * in situation where we wont support new supplicant in
		 * combination with module param p2pon=1, but that is the way
		 * it is. If the user tries this then unloading of driver might
		 * fail/lock.
		 */
		if (cfg->p2p.p2pdev_dynamically)
			return -EOPNOTSUPP;
		else
			return 0;
	}
	err = FUNC6(FUNC8(wiphy), vif, type);
	if (err) {
		FUNC0(drvr, "iface validation failed: err=%d\n", err);
		return err;
	}
	switch (type) {
	case NL80211_IFTYPE_MONITOR:
	case NL80211_IFTYPE_WDS:
		FUNC0(drvr, "type (%d) : currently we do not support this type\n",
			 type);
		return -EOPNOTSUPP;
	case NL80211_IFTYPE_ADHOC:
		infra = 0;
		break;
	case NL80211_IFTYPE_STATION:
		infra = 1;
		break;
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
		ap = 1;
		break;
	default:
		err = -EINVAL;
		goto done;
	}

	if (ap) {
		if (type == NL80211_IFTYPE_P2P_GO) {
			FUNC2(INFO, "IF Type = P2P GO\n");
			err = FUNC5(cfg, BRCMF_FIL_P2P_IF_GO);
		}
		if (!err) {
			FUNC2(INFO, "IF Type = AP\n");
		}
	} else {
		err = FUNC3(ifp, BRCMF_C_SET_INFRA, infra);
		if (err) {
			FUNC0(drvr, "WLC_SET_INFRA error (%d)\n", err);
			err = -EAGAIN;
			goto done;
		}
		FUNC2(INFO, "IF Type = %s\n", FUNC4(vif) ?
			  "Adhoc" : "Infra");
	}
	ndev->ieee80211_ptr->iftype = type;

	FUNC1(&vif->wdev);

done:
	FUNC2(TRACE, "Exit\n");

	return err;
}