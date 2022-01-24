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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; scalar_t__ sk; } ;
struct net_device {int dummy; } ;
struct mwifiex_txinfo {scalar_t__ bss_type; scalar_t__ pkt_len; int /*<<< orphan*/  bss_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dropped; } ;
struct mwifiex_private {scalar_t__ bss_type; scalar_t__ check_tdls_tx; TYPE_3__* adapter; int /*<<< orphan*/  cfg_bssid; int /*<<< orphan*/  bss_num; TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {scalar_t__ fw_api_ver; scalar_t__ auto_tdls; int /*<<< orphan*/  fw_cap_info; int /*<<< orphan*/  work_flags; } ;
struct TYPE_5__ {int tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ ETH_FRAME_LEN ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MWIFIEX_BSS_TYPE_STA ; 
 int /*<<< orphan*/  MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS ; 
 scalar_t__ MWIFIEX_FW_V15 ; 
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ; 
 struct mwifiex_txinfo* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  MWIFIEX_SURPRISE_REMOVED ; 
 int SKBTX_WIFI_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_txinfo*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC7 (struct mwifiex_private*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 struct mwifiex_private* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct mwifiex_private*,struct sk_buff*) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,scalar_t__) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC17(struct sk_buff *skb, struct net_device *dev)
{
	struct mwifiex_private *priv = FUNC9(dev);
	struct sk_buff *new_skb;
	struct mwifiex_txinfo *tx_info;
	bool multicast;

	FUNC8(priv->adapter, DATA,
		    "data: %lu BSS(%d-%d): Data <= kernel\n",
		    jiffies, priv->bss_type, priv->bss_num);

	if (FUNC15(MWIFIEX_SURPRISE_REMOVED, &priv->adapter->work_flags)) {
		FUNC5(skb);
		priv->stats.tx_dropped++;
		return 0;
	}
	if (!skb->len || (skb->len > ETH_FRAME_LEN)) {
		FUNC8(priv->adapter, ERROR,
			    "Tx: bad skb len %d\n", skb->len);
		FUNC5(skb);
		priv->stats.tx_dropped++;
		return 0;
	}
	if (FUNC12(skb) < MWIFIEX_MIN_DATA_HEADER_LEN) {
		FUNC8(priv->adapter, DATA,
			    "data: Tx: insufficient skb headroom %d\n",
			    FUNC12(skb));
		/* Insufficient skb headroom - allocate a new skb */
		new_skb =
			FUNC13(skb, MWIFIEX_MIN_DATA_HEADER_LEN);
		if (FUNC16(!new_skb)) {
			FUNC8(priv->adapter, ERROR,
				    "Tx: cannot alloca new_skb\n");
			FUNC5(skb);
			priv->stats.tx_dropped++;
			return 0;
		}
		FUNC5(skb);
		skb = new_skb;
		FUNC8(priv->adapter, INFO,
			    "info: new skb headroomd %d\n",
			    FUNC12(skb));
	}

	tx_info = FUNC1(skb);
	FUNC6(tx_info, 0, sizeof(*tx_info));
	tx_info->bss_num = priv->bss_num;
	tx_info->bss_type = priv->bss_type;
	tx_info->pkt_len = skb->len;

	multicast = FUNC4(skb->data);

	if (FUNC16(!multicast && skb->sk &&
		     FUNC14(skb)->tx_flags & SKBTX_WIFI_STATUS &&
		     priv->adapter->fw_api_ver == MWIFIEX_FW_V15))
		skb = FUNC7(priv,
						      skb,
					MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS, NULL);

	/* Record the current time the packet was queued; used to
	 * determine the amount of time the packet was queued in
	 * the driver before it was sent to the firmware.
	 * The delay is then sent along with the packet to the
	 * firmware for aggregate delay calculation for stats and
	 * MSDU lifetime expiry.
	 */
	FUNC2(skb);

	if (FUNC0(priv->adapter->fw_cap_info) &&
	    priv->bss_type == MWIFIEX_BSS_TYPE_STA &&
	    !FUNC3(priv->cfg_bssid, skb->data)) {
		if (priv->adapter->auto_tdls && priv->check_tdls_tx)
			FUNC11(priv, skb);
	}

	FUNC10(priv, skb);

	return 0;
}