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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct wiphy {int dummy; } ;
struct wil6210_vif {scalar_t__ channel; } ;
struct wil6210_priv {int dummy; } ;
struct cfg80211_mgmt_tx_params {size_t len; int /*<<< orphan*/  wait; TYPE_1__* chan; int /*<<< orphan*/  offchan; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {int hw_value; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ ) ; 
 struct wil6210_vif* FUNC1 (struct wil6210_priv*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,...) ; 
 struct wil6210_priv* FUNC4 (struct wiphy*) ; 
 int FUNC5 (struct wil6210_vif*,int /*<<< orphan*/  const*,size_t) ; 
 int FUNC6 (struct wil6210_vif*,int /*<<< orphan*/  const*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC7(struct wiphy *wiphy, struct wireless_dev *wdev,
			 struct cfg80211_mgmt_tx_params *params,
			 u64 *cookie)
{
	const u8 *buf = params->buf;
	size_t len = params->len;
	struct wil6210_priv *wil = FUNC4(wiphy);
	struct wil6210_vif *vif = FUNC1(wil, wdev);
	int rc;
	bool tx_status;

	FUNC2(wil, "mgmt_tx: channel %d offchan %d, wait %d\n",
		     params->chan ? params->chan->hw_value : -1,
		     params->offchan,
		     params->wait);

	/* Note, currently we support the "wait" parameter only on AP mode.
	 * In other modes, user-space must call remain_on_channel before
	 * mgmt_tx or listen on a channel other than active one.
	 */

	if (params->chan && params->chan->hw_value == 0) {
		FUNC3(wil, "invalid channel\n");
		return -EINVAL;
	}

	if (wdev->iftype != NL80211_IFTYPE_AP) {
		FUNC2(wil,
			     "send WMI_SW_TX_REQ_CMDID on non-AP interfaces\n");
		rc = FUNC5(vif, buf, len);
		goto out;
	}

	if (!params->chan || params->chan->hw_value == vif->channel) {
		FUNC2(wil,
			     "send WMI_SW_TX_REQ_CMDID for on-channel\n");
		rc = FUNC5(vif, buf, len);
		goto out;
	}

	if (params->offchan == 0) {
		FUNC3(wil,
			"invalid channel params: current %d requested %d, off-channel not allowed\n",
			vif->channel, params->chan->hw_value);
		return -EBUSY;
	}

	/* use the wmi_mgmt_tx_ext only on AP mode and off-channel */
	rc = FUNC6(vif, buf, len, params->chan->hw_value,
			     params->wait);

out:
	/* when the sent packet was not acked by receiver(ACK=0), rc will
	 * be -EAGAIN. In this case this function needs to return success,
	 * the ACK=0 will be reflected in tx_status.
	 */
	tx_status = (rc == 0);
	rc = (rc == -EAGAIN) ? 0 : rc;
	FUNC0(wdev, cookie ? *cookie : 0, buf, len,
				tx_status, GFP_KERNEL);

	return rc;
}