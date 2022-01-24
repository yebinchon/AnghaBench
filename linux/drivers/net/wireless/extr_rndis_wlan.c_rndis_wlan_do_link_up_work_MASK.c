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
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {scalar_t__ infra_mode; int connected; int /*<<< orphan*/  bssid; int /*<<< orphan*/  work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  work_pending; } ;
struct ndis_80211_assoc_info {int /*<<< orphan*/  offset_resp_ies; int /*<<< orphan*/  resp_ie_length; int /*<<< orphan*/  offset_req_ies; int /*<<< orphan*/  req_ie_length; } ;
struct cfg80211_roam_info {unsigned int req_ie_len; unsigned int resp_ie_len; int /*<<< orphan*/ * resp_ie; int /*<<< orphan*/ * req_ie; int /*<<< orphan*/ * bssid; int /*<<< orphan*/  channel; } ;
typedef  int /*<<< orphan*/  bssid ;

/* Variables and functions */
 unsigned int CONTROL_BUFFER_SIZE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NDIS_80211_INFRA_ADHOC ; 
 scalar_t__ NDIS_80211_INFRA_INFRA ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  WORK_LINK_UP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cfg80211_roam_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usbnet*,struct ndis_80211_assoc_info*,unsigned int) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usbnet*,int /*<<< orphan*/ *) ; 
 struct rndis_wlan_private* FUNC7 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ndis_80211_assoc_info*) ; 
 struct ndis_80211_assoc_info* FUNC10 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct usbnet*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct usbnet*,int /*<<< orphan*/ *,struct ndis_80211_assoc_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct usbnet*) ; 

__attribute__((used)) static void FUNC21(struct usbnet *usbdev)
{
	struct rndis_wlan_private *priv = FUNC7(usbdev);
	struct ndis_80211_assoc_info *info = NULL;
	u8 bssid[ETH_ALEN];
	unsigned int resp_ie_len, req_ie_len;
	unsigned int offset;
	u8 *req_ie, *resp_ie;
	int ret;
	bool roamed = false;
	bool match_bss;

	if (priv->infra_mode == NDIS_80211_INFRA_INFRA && priv->connected) {
		/* received media connect indication while connected, either
		 * device reassociated with same AP or roamed to new. */
		roamed = true;
	}

	req_ie_len = 0;
	resp_ie_len = 0;
	req_ie = NULL;
	resp_ie = NULL;

	if (priv->infra_mode == NDIS_80211_INFRA_INFRA) {
		info = FUNC10(CONTROL_BUFFER_SIZE, GFP_KERNEL);
		if (!info) {
			/* No memory? Try resume work later */
			FUNC19(WORK_LINK_UP, &priv->work_pending);
			FUNC16(priv->workqueue, &priv->work);
			return;
		}

		/* Get association info IEs from device. */
		ret = FUNC4(usbdev, info, CONTROL_BUFFER_SIZE);
		if (!ret) {
			req_ie_len = FUNC11(info->req_ie_length);
			if (req_ie_len > CONTROL_BUFFER_SIZE)
				req_ie_len = CONTROL_BUFFER_SIZE;
			if (req_ie_len != 0) {
				offset = FUNC11(info->offset_req_ies);

				if (offset > CONTROL_BUFFER_SIZE)
					offset = CONTROL_BUFFER_SIZE;

				req_ie = (u8 *)info + offset;

				if (offset + req_ie_len > CONTROL_BUFFER_SIZE)
					req_ie_len =
						CONTROL_BUFFER_SIZE - offset;
			}

			resp_ie_len = FUNC11(info->resp_ie_length);
			if (resp_ie_len > CONTROL_BUFFER_SIZE)
				resp_ie_len = CONTROL_BUFFER_SIZE;
			if (resp_ie_len != 0) {
				offset = FUNC11(info->offset_resp_ies);

				if (offset > CONTROL_BUFFER_SIZE)
					offset = CONTROL_BUFFER_SIZE;

				resp_ie = (u8 *)info + offset;

				if (offset + resp_ie_len > CONTROL_BUFFER_SIZE)
					resp_ie_len =
						CONTROL_BUFFER_SIZE - offset;
			}
		} else {
			/* Since rndis_wlan_craft_connected_bss() might use info
			 * later and expects info to contain valid data if
			 * non-null, free info and set NULL here.
			 */
			FUNC9(info);
			info = NULL;
		}
	} else if (FUNC0(priv->infra_mode != NDIS_80211_INFRA_ADHOC))
		return;

	ret = FUNC5(usbdev, bssid);
	if (ret < 0)
		FUNC13(bssid, 0, sizeof(bssid));

	FUNC14(usbdev->net, "link up work: [%pM]%s\n",
		   bssid, roamed ? " roamed" : "");

	/* Internal bss list in device should contain at least the currently
	 * connected bss and we can get it to cfg80211 with
	 * rndis_check_bssid_list().
	 *
	 * NDIS spec says: "If the device is associated, but the associated
	 *  BSSID is not in its BSSID scan list, then the driver must add an
	 *  entry for the BSSID at the end of the data that it returns in
	 *  response to query of RNDIS_OID_802_11_BSSID_LIST."
	 *
	 * NOTE: Seems to be true for BCM4320b variant, but not BCM4320a.
	 */
	match_bss = false;
	FUNC17(usbdev, bssid, &match_bss);

	if (!FUNC8(bssid) && !match_bss) {
		/* Couldn't get bss from device, we need to manually craft bss
		 * for cfg80211.
		 */
		FUNC18(usbdev, bssid, info);
	}

	if (priv->infra_mode == NDIS_80211_INFRA_INFRA) {
		if (!roamed) {
			FUNC1(usbdev->net, bssid, req_ie,
						req_ie_len, resp_ie,
						resp_ie_len, 0, GFP_KERNEL);
		} else {
			struct cfg80211_roam_info roam_info = {
				.channel = FUNC6(usbdev, NULL),
				.bssid = bssid,
				.req_ie = req_ie,
				.req_ie_len = req_ie_len,
				.resp_ie = resp_ie,
				.resp_ie_len = resp_ie_len,
			};

			FUNC3(usbdev->net, &roam_info, GFP_KERNEL);
		}
	} else if (priv->infra_mode == NDIS_80211_INFRA_ADHOC)
		FUNC2(usbdev->net, bssid,
				     FUNC6(usbdev, NULL),
				     GFP_KERNEL);

	FUNC9(info);

	priv->connected = true;
	FUNC12(priv->bssid, bssid, ETH_ALEN);

	FUNC20(usbdev);
	FUNC15(usbdev->net);
}