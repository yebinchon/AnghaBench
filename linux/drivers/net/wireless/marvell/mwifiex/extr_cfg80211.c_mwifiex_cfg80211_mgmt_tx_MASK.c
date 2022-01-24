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
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct wireless_dev {int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct mwifiex_txinfo {scalar_t__ pkt_len; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  frame_control; } ;
struct cfg80211_mgmt_tx_params {size_t len; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  pkt_len ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ ETH_ALEN ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ MWIFIEX_BSS_ROLE_STA ; 
 int /*<<< orphan*/  MWIFIEX_BUF_FLAG_ACTION_TX_STATUS ; 
 scalar_t__ MWIFIEX_MGMT_FRAME_HEADER_SIZE ; 
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ; 
 struct mwifiex_txinfo* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct wireless_dev*,int,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_txinfo*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC7 (struct mwifiex_private*,struct sk_buff*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 
 struct mwifiex_private* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mwifiex_private*,struct sk_buff*) ; 
 int FUNC12 () ; 

__attribute__((used)) static int
FUNC13(struct wiphy *wiphy, struct wireless_dev *wdev,
			 struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
	const u8 *buf = params->buf;
	size_t len = params->len;
	struct sk_buff *skb;
	u16 pkt_len;
	const struct ieee80211_mgmt *mgmt;
	struct mwifiex_txinfo *tx_info;
	struct mwifiex_private *priv = FUNC10(wdev->netdev);

	if (!buf || !len) {
		FUNC8(priv->adapter, ERROR, "invalid buffer and length\n");
		return -EFAULT;
	}

	mgmt = (const struct ieee80211_mgmt *)buf;
	if (FUNC0(priv) != MWIFIEX_BSS_ROLE_STA &&
	    FUNC5(mgmt->frame_control)) {
		/* Since we support offload probe resp, we need to skip probe
		 * resp in AP or GO mode */
		FUNC8(priv->adapter, INFO,
			    "info: skip to send probe resp in AP or GO mode\n");
		return 0;
	}

	pkt_len = len + ETH_ALEN;
	skb = FUNC3(MWIFIEX_MIN_DATA_HEADER_LEN +
			    MWIFIEX_MGMT_FRAME_HEADER_SIZE +
			    pkt_len + sizeof(pkt_len));

	if (!skb) {
		FUNC8(priv->adapter, ERROR,
			    "allocate skb failed for management frame\n");
		return -ENOMEM;
	}

	tx_info = FUNC1(skb);
	FUNC6(tx_info, 0, sizeof(*tx_info));
	tx_info->bss_num = priv->bss_num;
	tx_info->bss_type = priv->bss_type;
	tx_info->pkt_len = pkt_len;

	FUNC9(skb, buf, len);
	*cookie = FUNC12() | 1;

	if (FUNC4(mgmt->frame_control))
		skb = FUNC7(priv,
						      skb,
				MWIFIEX_BUF_FLAG_ACTION_TX_STATUS, cookie);
	else
		FUNC2(wdev, *cookie, buf, len, true,
					GFP_ATOMIC);

	FUNC11(priv, skb);

	FUNC8(priv->adapter, INFO, "info: management frame transmitted\n");
	return 0;
}