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
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {scalar_t__ iw_mode; int firmware_type; int /*<<< orphan*/  has_ext_scan; scalar_t__ has_hostscan; struct hermes hw; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hermes_idstring {int /*<<< orphan*/  val; void* len; } ;
struct cfg80211_ssid {size_t ssid_len; int /*<<< orphan*/  ssid; } ;
typedef  void* __le16 ;
struct TYPE_2__ {int (* write_ltv ) (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hermes_idstring*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENETDOWN ; 
 int EOPNOTSUPP ; 
#define  FIRMWARE_TYPE_AGERE 130 
#define  FIRMWARE_TYPE_INTERSIL 129 
#define  FIRMWARE_TYPE_SYMBOL 128 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int HERMES_HOSTSCAN_SYMBOL_BCAST ; 
 int HERMES_HOSTSCAN_SYMBOL_ONCE ; 
 int /*<<< orphan*/  HERMES_INQ_CHANNELINFO ; 
 int /*<<< orphan*/  HERMES_INQ_SCAN ; 
 int /*<<< orphan*/  HERMES_RID_CNFHOSTSCAN ; 
 int /*<<< orphan*/  HERMES_RID_CNFHOSTSCAN_SYMBOL ; 
 int /*<<< orphan*/  HERMES_RID_CNFSCANCHANNELS2GHZ ; 
 int /*<<< orphan*/  HERMES_RID_CNFSCANSSID_AGERE ; 
 int FUNC1 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void***) ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  USER_BAP ; 
 void* FUNC2 (size_t) ; 
 int FUNC3 (struct hermes*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct orinoco_private*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct orinoco_private*,unsigned long*) ; 
 int FUNC9 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hermes_idstring*) ; 

int FUNC10(struct orinoco_private *priv,
			    const struct cfg80211_ssid *ssid)
{
	struct net_device *dev = priv->ndev;
	struct hermes *hw = &priv->hw;
	unsigned long flags;
	int err = 0;

	if (FUNC7(priv, &flags) != 0)
		return -EBUSY;

	/* Scanning with port 0 disabled would fail */
	if (!FUNC6(dev)) {
		err = -ENETDOWN;
		goto out;
	}

	/* In monitor mode, the scan results are always empty.
	 * Probe responses are passed to the driver as received
	 * frames and could be processed in software. */
	if (priv->iw_mode == NL80211_IFTYPE_MONITOR) {
		err = -EOPNOTSUPP;
		goto out;
	}

	if (priv->has_hostscan) {
		switch (priv->firmware_type) {
		case FIRMWARE_TYPE_SYMBOL:
			err = FUNC4(hw, USER_BAP,
						HERMES_RID_CNFHOSTSCAN_SYMBOL,
						HERMES_HOSTSCAN_SYMBOL_ONCE |
						HERMES_HOSTSCAN_SYMBOL_BCAST);
			break;
		case FIRMWARE_TYPE_INTERSIL: {
			__le16 req[3];

			req[0] = FUNC2(0x3fff);	/* All channels */
			req[1] = FUNC2(0x0001);	/* rate 1 Mbps */
			req[2] = 0;			/* Any ESSID */
			err = FUNC1(hw, USER_BAP,
						  HERMES_RID_CNFHOSTSCAN, &req);
			break;
		}
		case FIRMWARE_TYPE_AGERE:
			if (ssid->ssid_len > 0) {
				struct hermes_idstring idbuf;
				size_t len = ssid->ssid_len;

				idbuf.len = FUNC2(len);
				FUNC5(idbuf.val, ssid->ssid, len);

				err = hw->ops->write_ltv(hw, USER_BAP,
					       HERMES_RID_CNFSCANSSID_AGERE,
					       FUNC0(len + 2),
					       &idbuf);
			} else
				err = FUNC4(hw, USER_BAP,
						   HERMES_RID_CNFSCANSSID_AGERE,
						   0);	/* Any ESSID */
			if (err)
				break;

			if (priv->has_ext_scan) {
				err = FUNC4(hw, USER_BAP,
						HERMES_RID_CNFSCANCHANNELS2GHZ,
						0x7FFF);
				if (err)
					goto out;

				err = FUNC3(hw,
						     HERMES_INQ_CHANNELINFO);
			} else
				err = FUNC3(hw, HERMES_INQ_SCAN);

			break;
		}
	} else
		err = FUNC3(hw, HERMES_INQ_SCAN);

 out:
	FUNC8(priv, &flags);

	return err;
}