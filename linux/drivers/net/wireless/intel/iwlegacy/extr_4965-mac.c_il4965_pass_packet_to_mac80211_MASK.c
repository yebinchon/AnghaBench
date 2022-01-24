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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct il_rx_buf {int /*<<< orphan*/ * page; } ;
struct TYPE_6__ {int rx_page_order; } ;
struct il_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  alloc_rxb_page; TYPE_3__ hw_params; TYPE_2__* cfg; int /*<<< orphan*/  stop_reason; int /*<<< orphan*/  is_open; } ;
struct ieee80211_rx_status {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_5__ {TYPE_1__* mod_params; } ;
struct TYPE_4__ {int /*<<< orphan*/  sw_crypto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  IL_STOP_REASON_PASSIVE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  SMALL_PACKET_SIZE ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct il_priv*,struct ieee80211_hdr*,int /*<<< orphan*/ ,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ieee80211_rx_status*,int) ; 
 int FUNC10 (struct il_rx_buf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(struct il_priv *il, struct ieee80211_hdr *hdr,
			       u32 len, u32 ampdu_status, struct il_rx_buf *rxb,
			       struct ieee80211_rx_status *stats)
{
	struct sk_buff *skb;
	__le16 fc = hdr->frame_control;

	/* We only process data packets if the interface is open */
	if (FUNC14(!il->is_open)) {
		FUNC0("Dropping packet while interface is not open.\n");
		return;
	}

	if (FUNC14(FUNC13(IL_STOP_REASON_PASSIVE, &il->stop_reason))) {
		FUNC8(il, IL_STOP_REASON_PASSIVE);
		FUNC1("Woke queues - frame received on passive channel\n");
	}

	/* In case of HW accelerated crypto and bad decryption, drop */
	if (!il->cfg->mod_params->sw_crypto &&
	    FUNC6(il, hdr, ampdu_status, stats))
		return;

	skb = FUNC4(SMALL_PACKET_SIZE);
	if (!skb) {
		FUNC3("dev_alloc_skb failed\n");
		return;
	}

	if (len <= SMALL_PACKET_SIZE) {
		FUNC12(skb, hdr, len);
	} else {
		FUNC11(skb, 0, rxb->page, (void *)hdr - FUNC10(rxb),
				len, PAGE_SIZE << il->hw_params.rx_page_order);
		il->alloc_rxb_page--;
		rxb->page = NULL;
	}

	FUNC7(il, false, fc, len);
	FUNC9(FUNC2(skb), stats, sizeof(*stats));

	FUNC5(il->hw, skb);
}