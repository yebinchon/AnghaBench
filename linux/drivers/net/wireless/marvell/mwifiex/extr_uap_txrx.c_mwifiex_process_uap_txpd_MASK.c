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
typedef  size_t u8 ;
typedef  int u16 ;
struct uap_txpd {size_t priority; void* tx_control; void* tx_pkt_offset; void* tx_pkt_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_token_id; int /*<<< orphan*/  pkt_delay_2ms; void* tx_pkt_length; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; } ;
struct sk_buff {int len; void* data; scalar_t__ priority; } ;
struct mwifiex_txinfo {int status_code; int flags; int /*<<< orphan*/  ack_frame_id; } ;
struct TYPE_2__ {int /*<<< orphan*/ * user_pri_pkt_tx_ctrl; } ;
struct mwifiex_private {int /*<<< orphan*/  pkt_tx_ctrl; TYPE_1__ wmm; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; struct mwifiex_adapter* adapter; } ;
struct mwifiex_adapter {int intf_hdr_len; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int MWIFIEX_BUF_FLAG_ACTION_TX_STATUS ; 
 int MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS ; 
 int MWIFIEX_DMA_ALIGN_SZ ; 
 scalar_t__ MWIFIEX_MGMT_FRAME_HEADER_SIZE ; 
 scalar_t__ MWIFIEX_MIN_DATA_HEADER_LEN ; 
 struct mwifiex_txinfo* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  MWIFIEX_TXPD_FLAGS_REQ_TX_STATUS ; 
 int PKT_TYPE_MGMT ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uap_txpd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_private*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 

void *FUNC11(struct mwifiex_private *priv,
			       struct sk_buff *skb)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	struct uap_txpd *txpd;
	struct mwifiex_txinfo *tx_info = FUNC2(skb);
	int pad;
	u16 pkt_type, pkt_offset;
	int hroom = adapter->intf_hdr_len;

	if (!skb->len) {
		FUNC6(adapter, ERROR,
			    "Tx: bad packet length: %d\n", skb->len);
		tx_info->status_code = -1;
		return skb->data;
	}

	FUNC1(FUNC9(skb) < MWIFIEX_MIN_DATA_HEADER_LEN);

	pkt_type = FUNC7(skb) ? PKT_TYPE_MGMT : 0;

	pad = ((void *)skb->data - (sizeof(*txpd) + hroom) - NULL) &
			(MWIFIEX_DMA_ALIGN_SZ - 1);

	FUNC10(skb, sizeof(*txpd) + pad);

	txpd = (struct uap_txpd *)skb->data;
	FUNC5(txpd, 0, sizeof(*txpd));
	txpd->bss_num = priv->bss_num;
	txpd->bss_type = priv->bss_type;
	txpd->tx_pkt_length = FUNC3((u16)(skb->len - (sizeof(*txpd) +
						pad)));
	txpd->priority = (u8)skb->priority;

	txpd->pkt_delay_2ms = FUNC8(priv, skb);

	if (tx_info->flags & MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS ||
	    tx_info->flags & MWIFIEX_BUF_FLAG_ACTION_TX_STATUS) {
		txpd->tx_token_id = tx_info->ack_frame_id;
		txpd->flags |= MWIFIEX_TXPD_FLAGS_REQ_TX_STATUS;
	}

	if (txpd->priority < FUNC0(priv->wmm.user_pri_pkt_tx_ctrl))
		/*
		 * Set the priority specific tx_control field, setting of 0 will
		 * cause the default value to be used later in this function.
		 */
		txpd->tx_control =
		    FUNC4(priv->wmm.user_pri_pkt_tx_ctrl[txpd->priority]);

	/* Offset of actual data */
	pkt_offset = sizeof(*txpd) + pad;
	if (pkt_type == PKT_TYPE_MGMT) {
		/* Set the packet type and add header for management frame */
		txpd->tx_pkt_type = FUNC3(pkt_type);
		pkt_offset += MWIFIEX_MGMT_FRAME_HEADER_SIZE;
	}

	txpd->tx_pkt_offset = FUNC3(pkt_offset);

	/* make space for adapter->intf_hdr_len */
	FUNC10(skb, hroom);

	if (!txpd->tx_control)
		/* TxCtrl set by user or default */
		txpd->tx_control = FUNC4(priv->pkt_tx_ctrl);

	return skb->data;
}