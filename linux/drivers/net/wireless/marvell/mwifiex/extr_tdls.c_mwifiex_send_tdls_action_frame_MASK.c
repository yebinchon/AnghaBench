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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tx_control ;
struct sk_buff {int len; int /*<<< orphan*/ * data; int /*<<< orphan*/  priority; } ;
struct mwifiex_txinfo {int /*<<< orphan*/  flags; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; } ;
struct mwifiex_private {int /*<<< orphan*/  bss_type; int /*<<< orphan*/  bss_num; int /*<<< orphan*/  cfg_bssid; int /*<<< orphan*/  curr_addr; TYPE_1__* adapter; } ;
struct ieee_types_vht_oper {int dummy; } ;
struct ieee_types_vht_cap {int dummy; } ;
struct ieee_types_extcap {int dummy; } ;
struct ieee_types_bss_co_2040 {int dummy; } ;
struct ieee_types_aid {int dummy; } ;
struct ieee80211_tdls_lnkie {int dummy; } ;
struct ieee80211_tdls_data {int dummy; } ;
struct ieee80211_mgmt {int dummy; } ;
struct ieee80211_ht_operation {int dummy; } ;
struct ieee80211_ht_cap {int dummy; } ;
typedef  int /*<<< orphan*/  pkt_type ;
typedef  int /*<<< orphan*/  pkt_len ;
struct TYPE_2__ {scalar_t__ is_hw_11ac_capable; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  MWIFIEX_BUF_FLAG_TDLS_PKT ; 
 int MWIFIEX_MGMT_FRAME_HEADER_SIZE ; 
 int MWIFIEX_MIN_DATA_HEADER_LEN ; 
 int /*<<< orphan*/  MWIFIEX_PRIO_VI ; 
 struct mwifiex_txinfo* FUNC0 (struct sk_buff*) ; 
 int MWIFIEX_SUPPORTED_RATES ; 
 int PKT_TYPE_MGMT ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_txinfo*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct mwifiex_private*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct mwifiex_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

int FUNC14(struct mwifiex_private *priv, const u8 *peer,
				   u8 action_code, u8 dialog_token,
				   u16 status_code, const u8 *extra_ies,
				   size_t extra_ies_len)
{
	struct sk_buff *skb;
	struct mwifiex_txinfo *tx_info;
	u8 *pos;
	u32 pkt_type, tx_control;
	u16 pkt_len, skb_len;

	skb_len = MWIFIEX_MIN_DATA_HEADER_LEN +
		  FUNC4(sizeof(struct ieee80211_mgmt),
		      sizeof(struct ieee80211_tdls_data)) +
		  MWIFIEX_MGMT_FRAME_HEADER_SIZE +
		  MWIFIEX_SUPPORTED_RATES +
		  sizeof(struct ieee_types_extcap) +
		  sizeof(struct ieee80211_ht_cap) +
		  sizeof(struct ieee_types_bss_co_2040) +
		  sizeof(struct ieee80211_ht_operation) +
		  sizeof(struct ieee80211_tdls_lnkie) +
		  extra_ies_len +
		  3 + /* Qos Info */
		  ETH_ALEN; /* Address4 */

	if (priv->adapter->is_hw_11ac_capable)
		skb_len += sizeof(struct ieee_types_vht_cap) +
			   sizeof(struct ieee_types_vht_oper) +
			   sizeof(struct ieee_types_aid);

	skb = FUNC2(skb_len);
	if (!skb) {
		FUNC8(priv->adapter, ERROR,
			    "allocate skb failed for management frame\n");
		return -ENOMEM;
	}

	FUNC13(skb, MWIFIEX_MIN_DATA_HEADER_LEN);

	pkt_type = PKT_TYPE_MGMT;
	tx_control = 0;
	pos = FUNC12(skb,
			   MWIFIEX_MGMT_FRAME_HEADER_SIZE + sizeof(pkt_len));
	FUNC5(pos, &pkt_type, sizeof(pkt_type));
	FUNC5(pos + sizeof(pkt_type), &tx_control, sizeof(tx_control));

	if (FUNC7(priv, peer, action_code,
						dialog_token, status_code,
						skb)) {
		FUNC3(skb);
		return -EINVAL;
	}

	if (extra_ies_len)
		FUNC11(skb, extra_ies, extra_ies_len);

	/* the TDLS link IE is always added last we are the responder */

	FUNC10(skb, peer, priv->curr_addr,
				 priv->cfg_bssid);

	skb->priority = MWIFIEX_PRIO_VI;

	tx_info = FUNC0(skb);
	FUNC6(tx_info, 0, sizeof(*tx_info));
	tx_info->bss_num = priv->bss_num;
	tx_info->bss_type = priv->bss_type;
	tx_info->flags |= MWIFIEX_BUF_FLAG_TDLS_PKT;

	pkt_len = skb->len - MWIFIEX_MGMT_FRAME_HEADER_SIZE - sizeof(pkt_len);
	FUNC5(skb->data + MWIFIEX_MGMT_FRAME_HEADER_SIZE, &pkt_len,
	       sizeof(pkt_len));
	FUNC1(skb);
	FUNC9(priv, skb);

	return 0;
}