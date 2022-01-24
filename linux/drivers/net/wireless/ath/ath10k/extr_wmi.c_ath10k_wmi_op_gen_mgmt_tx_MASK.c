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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ peer_macaddr; void* buf_len; scalar_t__ tx_power; scalar_t__ tx_rate; void* vdev_id; } ;
struct wmi_mgmt_tx_cmd {int /*<<< orphan*/  buf; TYPE_3__ hdr; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath10k_vif {int vdev_id; } ;
struct ath10k_skb_cb {TYPE_1__* vif; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 struct ath10k_skb_cb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 int IEEE80211_CCMP_MIC_LEN ; 
 int IEEE80211_FCTL_FTYPE ; 
 int IEEE80211_FCTL_STYPE ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,struct sk_buff*,int,int,int) ; 
 struct sk_buff* FUNC5 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath10k*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ath10k*,scalar_t__,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC18(struct ath10k *ar, struct sk_buff *msdu)
{
	struct ath10k_skb_cb *cb = FUNC0(msdu);
	struct ath10k_vif *arvif;
	struct wmi_mgmt_tx_cmd *cmd;
	struct ieee80211_hdr *hdr;
	struct sk_buff *skb;
	int len;
	u32 vdev_id;
	u32 buf_len = msdu->len;
	u16 fc;

	hdr = (struct ieee80211_hdr *)msdu->data;
	fc = FUNC13(hdr->frame_control);

	if (cb->vif) {
		arvif = (void *)cb->vif->drv_priv;
		vdev_id = arvif->vdev_id;
	} else {
		vdev_id = 0;
	}

	if (FUNC2(!FUNC12(hdr->frame_control)))
		return FUNC1(-EINVAL);

	len = sizeof(cmd->hdr) + msdu->len;

	if ((FUNC9(hdr->frame_control) ||
	     FUNC10(hdr->frame_control) ||
	     FUNC11(hdr->frame_control)) &&
	     FUNC8(hdr->frame_control)) {
		len += IEEE80211_CCMP_MIC_LEN;
		buf_len += IEEE80211_CCMP_MIC_LEN;
	}

	len = FUNC15(len, 4);

	skb = FUNC5(ar, len);
	if (!skb)
		return FUNC1(-ENOMEM);

	cmd = (struct wmi_mgmt_tx_cmd *)skb->data;

	cmd->hdr.vdev_id = FUNC3(vdev_id);
	cmd->hdr.tx_rate = 0;
	cmd->hdr.tx_power = 0;
	cmd->hdr.buf_len = FUNC3(buf_len);

	FUNC6(cmd->hdr.peer_macaddr.addr, FUNC7(hdr));
	FUNC14(cmd->buf, msdu->data, msdu->len);

	FUNC4(ar, ATH10K_DBG_WMI, "wmi mgmt tx skb %pK len %d ftype %02x stype %02x\n",
		   msdu, skb->len, fc & IEEE80211_FCTL_FTYPE,
		   fc & IEEE80211_FCTL_STYPE);
	FUNC16(ar, skb->data, skb->len);
	FUNC17(ar, skb->data, skb->len);

	return skb;
}