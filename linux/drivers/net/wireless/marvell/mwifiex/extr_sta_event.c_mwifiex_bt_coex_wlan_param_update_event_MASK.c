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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct mwifiex_private {struct mwifiex_adapter* adapter; } ;
struct mwifiex_ie_types_header {int /*<<< orphan*/  type; int /*<<< orphan*/  len; } ;
struct mwifiex_ie_types_btcoex_scan_time {int /*<<< orphan*/  max_scan_time; int /*<<< orphan*/  min_scan_time; int /*<<< orphan*/  coex_scan; } ;
struct mwifiex_ie_types_btcoex_aggr_win_size {int /*<<< orphan*/  rx_win_size; int /*<<< orphan*/  tx_win_size; int /*<<< orphan*/  coex_win_size; } ;
struct mwifiex_adapter {int /*<<< orphan*/  coex_rx_win_size; int /*<<< orphan*/  coex_tx_win_size; int /*<<< orphan*/  coex_win_size; void* coex_min_scan_time; int /*<<< orphan*/  coex_scan; int /*<<< orphan*/  dev; void* coex_max_scan_time; } ;
typedef  int s32 ;

/* Variables and functions */
#define  TLV_BTCOEX_WL_AGGR_WINSIZE 129 
#define  TLV_BTCOEX_WL_SCANTIME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 

void FUNC4(struct mwifiex_private *priv,
					     struct sk_buff *event_skb)
{
	struct mwifiex_adapter *adapter = priv->adapter;
	struct mwifiex_ie_types_header *tlv;
	struct mwifiex_ie_types_btcoex_aggr_win_size *winsizetlv;
	struct mwifiex_ie_types_btcoex_scan_time *scantlv;
	s32 len = event_skb->len - sizeof(u32);
	u8 *cur_ptr = event_skb->data + sizeof(u32);
	u16 tlv_type, tlv_len;

	while (len >= sizeof(struct mwifiex_ie_types_header)) {
		tlv = (struct mwifiex_ie_types_header *)cur_ptr;
		tlv_len = FUNC1(tlv->len);
		tlv_type = FUNC1(tlv->type);

		if ((tlv_len + sizeof(struct mwifiex_ie_types_header)) > len)
			break;
		switch (tlv_type) {
		case TLV_BTCOEX_WL_AGGR_WINSIZE:
			winsizetlv =
			    (struct mwifiex_ie_types_btcoex_aggr_win_size *)tlv;
			adapter->coex_win_size = winsizetlv->coex_win_size;
			adapter->coex_tx_win_size =
				winsizetlv->tx_win_size;
			adapter->coex_rx_win_size =
				winsizetlv->rx_win_size;
			FUNC2(adapter);
			FUNC3(adapter);
			break;

		case TLV_BTCOEX_WL_SCANTIME:
			scantlv =
			    (struct mwifiex_ie_types_btcoex_scan_time *)tlv;
			adapter->coex_scan = scantlv->coex_scan;
			adapter->coex_min_scan_time = FUNC1(scantlv->min_scan_time);
			adapter->coex_max_scan_time = FUNC1(scantlv->max_scan_time);
			break;

		default:
			break;
		}

		len -= tlv_len + sizeof(struct mwifiex_ie_types_header);
		cur_ptr += tlv_len +
			sizeof(struct mwifiex_ie_types_header);
	}

	FUNC0(adapter->dev, "coex_scan=%d min_scan=%d coex_win=%d, tx_win=%d rx_win=%d\n",
		adapter->coex_scan, adapter->coex_min_scan_time,
		adapter->coex_win_size, adapter->coex_tx_win_size,
		adapter->coex_rx_win_size);
}