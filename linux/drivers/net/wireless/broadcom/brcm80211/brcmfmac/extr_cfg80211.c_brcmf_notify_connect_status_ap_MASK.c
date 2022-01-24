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
typedef  scalar_t__ u32 ;
struct station_info {int generation; int /*<<< orphan*/  assoc_req_ies_len; void* assoc_req_ies; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_event_msg {scalar_t__ event_code; scalar_t__ reason; int /*<<< orphan*/  addr; int /*<<< orphan*/  datalen; } ;
struct brcmf_cfg80211_info {int /*<<< orphan*/  vif_disabled; struct brcmf_pub* pub; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ BRCMF_E_ASSOC_IND ; 
 scalar_t__ BRCMF_E_DEAUTH ; 
 scalar_t__ BRCMF_E_DEAUTH_IND ; 
 scalar_t__ BRCMF_E_DISASSOC_IND ; 
 scalar_t__ BRCMF_E_LINK ; 
 scalar_t__ BRCMF_E_REASON_LINK_BSSCFG_DIS ; 
 scalar_t__ BRCMF_E_REASSOC_IND ; 
 scalar_t__ BRCMF_E_STATUS_SUCCESS ; 
 int /*<<< orphan*/  CONN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,struct station_info*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct station_info*) ; 
 struct station_info* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32
FUNC9(struct brcmf_cfg80211_info *cfg,
			       struct net_device *ndev,
			       const struct brcmf_event_msg *e, void *data)
{
	struct brcmf_pub *drvr = cfg->pub;
	static int generation;
	u32 event = e->event_code;
	u32 reason = e->reason;
	struct station_info *sinfo;

	FUNC1(CONN, "event %s (%u), reason %d\n",
		  FUNC2(event), event, reason);
	if (event == BRCMF_E_LINK && reason == BRCMF_E_REASON_LINK_BSSCFG_DIS &&
	    ndev != FUNC5(cfg)) {
		FUNC1(CONN, "AP mode link down\n");
		FUNC6(&cfg->vif_disabled);
		return 0;
	}

	if (((event == BRCMF_E_ASSOC_IND) || (event == BRCMF_E_REASSOC_IND)) &&
	    (reason == BRCMF_E_STATUS_SUCCESS)) {
		if (!data) {
			FUNC0(drvr, "No IEs present in ASSOC/REASSOC_IND\n");
			return -EINVAL;
		}

		sinfo = FUNC8(sizeof(*sinfo), GFP_KERNEL);
		if (!sinfo)
			return -ENOMEM;

		sinfo->assoc_req_ies = data;
		sinfo->assoc_req_ies_len = e->datalen;
		generation++;
		sinfo->generation = generation;
		FUNC4(ndev, e->addr, sinfo, GFP_KERNEL);

		FUNC7(sinfo);
	} else if ((event == BRCMF_E_DISASSOC_IND) ||
		   (event == BRCMF_E_DEAUTH_IND) ||
		   (event == BRCMF_E_DEAUTH)) {
		FUNC3(ndev, e->addr, GFP_KERNEL);
	}
	return 0;
}