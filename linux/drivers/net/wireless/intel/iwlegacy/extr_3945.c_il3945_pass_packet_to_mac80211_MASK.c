#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct il_rx_pkt {int dummy; } ;
struct il_rx_buf {int /*<<< orphan*/ * page; } ;
struct TYPE_3__ {scalar_t__ rx_page_order; } ;
struct il_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  alloc_rxb_page; int /*<<< orphan*/  stop_reason; int /*<<< orphan*/  is_open; TYPE_1__ hw_params; } ;
struct il3945_rx_frame_hdr {scalar_t__ payload; int /*<<< orphan*/  len; } ;
struct il3945_rx_frame_end {int /*<<< orphan*/  status; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ IL39_RX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct il_rx_pkt*) ; 
 struct il3945_rx_frame_end* FUNC5 (struct il_rx_pkt*) ; 
 struct il3945_rx_frame_hdr* FUNC6 (struct il_rx_pkt*) ; 
 int /*<<< orphan*/  IL_STOP_REASON_PASSIVE ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SMALL_PACKET_SIZE ; 
 struct sk_buff* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 TYPE_2__ il3945_mod_params ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,struct ieee80211_hdr*,int /*<<< orphan*/ ,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct il_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 struct il_rx_pkt* FUNC15 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__,scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static void
FUNC20(struct il_priv *il, struct il_rx_buf *rxb,
			       struct ieee80211_rx_status *stats)
{
	struct il_rx_pkt *pkt = FUNC15(rxb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)FUNC4(pkt);
	struct il3945_rx_frame_hdr *rx_hdr = FUNC6(pkt);
	struct il3945_rx_frame_end *rx_end = FUNC5(pkt);
	u32 len = FUNC12(rx_hdr->len);
	struct sk_buff *skb;
	__le16 fc = hdr->frame_control;
	u32 fraglen = PAGE_SIZE << il->hw_params.rx_page_order;

	/* We received data from the HW, so stop the watchdog */
	if (FUNC19(len + IL39_RX_FRAME_SIZE > fraglen)) {
		FUNC0("Corruption detected!\n");
		return;
	}

	/* We only process data packets if the interface is open */
	if (FUNC19(!il->is_open)) {
		FUNC0("Dropping packet while interface is not open.\n");
		return;
	}

	if (FUNC19(FUNC18(IL_STOP_REASON_PASSIVE, &il->stop_reason))) {
		FUNC11(il, IL_STOP_REASON_PASSIVE);
		FUNC1("Woke queues - frame received on passive channel\n");
	}

	skb = FUNC7(SMALL_PACKET_SIZE);
	if (!skb) {
		FUNC3("dev_alloc_skb failed\n");
		return;
	}

	if (!il3945_mod_params.sw_crypto)
		FUNC9(il, (struct ieee80211_hdr *)pkt,
				      FUNC13(rx_end->status), stats);

	/* If frame is small enough to fit into skb->head, copy it
	 * and do not consume a full page
	 */
	if (len <= SMALL_PACKET_SIZE) {
		FUNC17(skb, rx_hdr->payload, len);
	} else {
		FUNC16(skb, 0, rxb->page,
				(void *)rx_hdr->payload - (void *)pkt, len,
				fraglen);
		il->alloc_rxb_page--;
		rxb->page = NULL;
	}
	FUNC10(il, false, fc, len);
	FUNC14(FUNC2(skb), stats, sizeof(*stats));

	FUNC8(il->hw, skb);
}