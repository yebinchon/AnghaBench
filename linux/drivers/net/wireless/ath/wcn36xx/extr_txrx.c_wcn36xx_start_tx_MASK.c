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
typedef  int /*<<< orphan*/  u32 ;
struct wcn36xx_vif {int dummy; } ;
struct wcn36xx_tx_bd {int tx_comp; int tx_bd_sign; int /*<<< orphan*/  dpu_rf; } ;
struct wcn36xx_sta {int dummy; } ;
struct wcn36xx {int /*<<< orphan*/  hw; int /*<<< orphan*/  dxe_lock; struct sk_buff* tx_ack_skb; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; } ;
typedef  int /*<<< orphan*/  bd ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_REQ_TX_STATUS ; 
 int /*<<< orphan*/  WCN36XX_BMU_WQ_TX ; 
 int /*<<< orphan*/  WCN36XX_DBG_DXE ; 
 int /*<<< orphan*/  WCN36XX_DBG_TX ; 
 int /*<<< orphan*/  WCN36XX_DBG_TX_DUMP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wcn36xx_tx_bd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct wcn36xx*,struct wcn36xx_vif*,struct wcn36xx_tx_bd*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wcn36xx_tx_bd*,struct wcn36xx*,struct wcn36xx_vif**,struct wcn36xx_sta*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct wcn36xx_tx_bd*,struct wcn36xx*,struct wcn36xx_vif**,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

int FUNC18(struct wcn36xx *wcn,
		     struct wcn36xx_sta *sta_priv,
		     struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct wcn36xx_vif *vif_priv = NULL;
	struct ieee80211_tx_info *info = FUNC1(skb);
	unsigned long flags;
	bool is_low = FUNC4(hdr->frame_control);
	bool bcast = FUNC7(hdr->addr1) ||
		FUNC8(hdr->addr1);
	struct wcn36xx_tx_bd bd;
	int ret;

	FUNC9(&bd, 0, sizeof(bd));

	FUNC12(WCN36XX_DBG_TX,
		    "tx skb %p len %d fc %04x sn %d %s %s\n",
		    skb, skb->len, FUNC2(hdr->frame_control),
		    FUNC0(FUNC2(hdr->seq_ctrl)),
		    is_low ? "low" : "high", bcast ? "bcast" : "ucast");

	FUNC13(WCN36XX_DBG_TX_DUMP, "", skb->data, skb->len);

	bd.dpu_rf = WCN36XX_BMU_WQ_TX;

	bd.tx_comp = !!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS);
	if (bd.tx_comp) {
		FUNC12(WCN36XX_DBG_DXE, "TX_ACK status requested\n");
		FUNC10(&wcn->dxe_lock, flags);
		if (wcn->tx_ack_skb) {
			FUNC11(&wcn->dxe_lock, flags);
			FUNC17("tx_ack_skb already set\n");
			return -EINVAL;
		}

		wcn->tx_ack_skb = skb;
		FUNC11(&wcn->dxe_lock, flags);

		/* Only one at a time is supported by fw. Stop the TX queues
		 * until the ack status gets back.
		 *
		 * TODO: Add watchdog in case FW does not answer
		 */
		FUNC5(wcn->hw);
	}

	/* Data frames served first*/
	if (is_low)
		FUNC15(&bd, wcn, &vif_priv, sta_priv, skb, bcast);
	else
		/* MGMT and CTRL frames are handeld here*/
		FUNC16(&bd, wcn, &vif_priv, skb, bcast);

	FUNC3((u32 *)&bd, sizeof(bd)/sizeof(u32));
	bd.tx_bd_sign = 0xbdbdbdbd;

	ret = FUNC14(wcn, vif_priv, &bd, skb, is_low);
	if (ret && bd.tx_comp) {
		/* If the skb has not been transmitted,
		 * don't keep a reference to it.
		 */
		FUNC10(&wcn->dxe_lock, flags);
		wcn->tx_ack_skb = NULL;
		FUNC11(&wcn->dxe_lock, flags);

		FUNC6(wcn->hw);
	}

	return ret;
}