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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct lbs_private {int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_pending_len; int /*<<< orphan*/  connect_status; int /*<<< orphan*/  assoc_bss; int /*<<< orphan*/  fwrelease; } ;
struct TYPE_6__ {void* size; } ;
struct cmd_ds_802_11_associate_response {int /*<<< orphan*/  iebuf; TYPE_3__ hdr; void* aid; void* capability; void* statuscode; } ;
struct TYPE_5__ {void* size; void* command; } ;
struct cmd_ds_802_11_associate {TYPE_2__ hdr; int /*<<< orphan*/ * iebuf; void* capability; void* listeninterval; int /*<<< orphan*/  bssid; } ;
struct cfg80211_connect_params {int /*<<< orphan*/  ie_len; int /*<<< orphan*/  ie; int /*<<< orphan*/  auth_type; } ;
struct cfg80211_bss {size_t capability; int /*<<< orphan*/  bssid; TYPE_1__* channel; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 size_t CMD_802_11_ASSOCIATE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LBS_ASSOC_MAX_CMD_SIZE ; 
 int /*<<< orphan*/  LBS_CONNECTED ; 
 int /*<<< orphan*/  LBS_DEB_ASSOC ; 
 size_t MRVDRV_DEFAULT_LISTEN_INTERVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int WLAN_STATUS_ASSOC_DENIED_UNSPEC ; 
 int WLAN_STATUS_AUTH_TIMEOUT ; 
 int WLAN_STATUS_CAPS_UNSUPPORTED ; 
 int WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/ * FUNC3 (struct cfg80211_bss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_ds_802_11_associate*) ; 
 struct cmd_ds_802_11_associate* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct cfg80211_bss*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct lbs_private*,size_t,struct cmd_ds_802_11_associate*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static int FUNC21(struct lbs_private *priv,
		struct cfg80211_bss *bss,
		struct cfg80211_connect_params *sme)
{
	struct cmd_ds_802_11_associate_response *resp;
	struct cmd_ds_802_11_associate *cmd = FUNC5(LBS_ASSOC_MAX_CMD_SIZE,
						      GFP_KERNEL);
	const u8 *ssid_eid;
	size_t len, resp_ie_len;
	int status;
	int ret;
	u8 *pos;
	u8 *tmp;

	if (!cmd) {
		ret = -ENOMEM;
		goto done;
	}
	pos = &cmd->iebuf[0];

	/*
	 * cmd              50 00
	 * length           34 00
	 * sequence         xx xx
	 * result           00 00
	 * BSS id           00 13 19 80 da 30
	 * capabilities     11 00
	 * listen interval  0a 00
	 * beacon interval  00 00
	 * DTIM period      00
	 * TLVs             xx   (up to 512 bytes)
	 */
	cmd->hdr.command = FUNC2(CMD_802_11_ASSOCIATE);

	/* Fill in static fields */
	FUNC16(cmd->bssid, bss->bssid, ETH_ALEN);
	cmd->listeninterval = FUNC2(MRVDRV_DEFAULT_LISTEN_INTERVAL);
	cmd->capability = FUNC2(bss->capability);

	/* add SSID TLV */
	FUNC19();
	ssid_eid = FUNC3(bss, WLAN_EID_SSID);
	if (ssid_eid)
		pos += FUNC10(pos, ssid_eid + 2, ssid_eid[1]);
	else
		FUNC13("no SSID\n");
	FUNC20();

	/* add DS param TLV */
	if (bss->channel)
		pos += FUNC8(pos, bss->channel->hw_value);
	else
		FUNC13("no channel\n");

	/* add (empty) CF param TLV */
	pos += FUNC7(pos);

	/* add rates TLV */
	tmp = pos + 4; /* skip Marvell IE header */
	pos += FUNC9(pos, bss);
	FUNC14(LBS_DEB_ASSOC, "Common Rates", tmp, pos - tmp);

	/* add auth type TLV */
	if (FUNC0(priv->fwrelease) >= 9)
		pos += FUNC6(pos, sme->auth_type);

	/* add WPA/WPA2 TLV */
	if (sme->ie && sme->ie_len)
		pos += FUNC11(pos, sme->ie, sme->ie_len);

	len = (sizeof(*cmd) - sizeof(cmd->iebuf)) +
		(u16)(pos - (u8 *) &cmd->iebuf);
	cmd->hdr.size = FUNC2(len);

	FUNC14(LBS_DEB_ASSOC, "ASSOC_CMD", (u8 *) cmd,
			FUNC15(cmd->hdr.size));

	/* store for later use */
	FUNC16(priv->assoc_bss, bss->bssid, ETH_ALEN);

	ret = FUNC12(priv, CMD_802_11_ASSOCIATE, cmd);
	if (ret)
		goto done;

	/* generate connect message to cfg80211 */

	resp = (void *) cmd; /* recast for easier field access */
	status = FUNC15(resp->statuscode);

	/* Older FW versions map the IEEE 802.11 Status Code in the association
	 * response to the following values returned in resp->statuscode:
	 *
	 *    IEEE Status Code                Marvell Status Code
	 *    0                       ->      0x0000 ASSOC_RESULT_SUCCESS
	 *    13                      ->      0x0004 ASSOC_RESULT_AUTH_REFUSED
	 *    14                      ->      0x0004 ASSOC_RESULT_AUTH_REFUSED
	 *    15                      ->      0x0004 ASSOC_RESULT_AUTH_REFUSED
	 *    16                      ->      0x0004 ASSOC_RESULT_AUTH_REFUSED
	 *    others                  ->      0x0003 ASSOC_RESULT_REFUSED
	 *
	 * Other response codes:
	 *    0x0001 -> ASSOC_RESULT_INVALID_PARAMETERS (unused)
	 *    0x0002 -> ASSOC_RESULT_TIMEOUT (internal timer expired waiting for
	 *                                    association response from the AP)
	 */
	if (FUNC0(priv->fwrelease) <= 8) {
		switch (status) {
		case 0:
			break;
		case 1:
			FUNC13("invalid association parameters\n");
			status = WLAN_STATUS_CAPS_UNSUPPORTED;
			break;
		case 2:
			FUNC13("timer expired while waiting for AP\n");
			status = WLAN_STATUS_AUTH_TIMEOUT;
			break;
		case 3:
			FUNC13("association refused by AP\n");
			status = WLAN_STATUS_ASSOC_DENIED_UNSPEC;
			break;
		case 4:
			FUNC13("authentication refused by AP\n");
			status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
			break;
		default:
			FUNC13("association failure %d\n", status);
			/* v5 OLPC firmware does return the AP status code if
			 * it's not one of the values above.  Let that through.
			 */
			break;
		}
	}

	FUNC13("status %d, statuscode 0x%04x, capability 0x%04x, "
		      "aid 0x%04x\n", status, FUNC15(resp->statuscode),
		      FUNC15(resp->capability), FUNC15(resp->aid));

	resp_ie_len = FUNC15(resp->hdr.size)
		- sizeof(resp->hdr)
		- 6;
	FUNC1(priv->dev,
				priv->assoc_bss,
				sme->ie, sme->ie_len,
				resp->iebuf, resp_ie_len,
				status,
				GFP_KERNEL);

	if (status == 0) {
		/* TODO: get rid of priv->connect_status */
		priv->connect_status = LBS_CONNECTED;
		FUNC17(priv->dev);
		if (!priv->tx_pending_len)
			FUNC18(priv->dev);
	}

	FUNC4(cmd);
done:
	return ret;
}