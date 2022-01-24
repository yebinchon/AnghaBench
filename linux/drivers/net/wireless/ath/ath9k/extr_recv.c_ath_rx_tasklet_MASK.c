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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_rx_status {int rs_datalen; int flag; int /*<<< orphan*/  rs_tstamp; int /*<<< orphan*/  is_mybeacon; scalar_t__ rs_more; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxbuf; struct sk_buff* frag; } ;
struct ath_softc {int ps_flags; TYPE_2__ rx; struct ath_hw* sc_ah; int /*<<< orphan*/  sc_pm_lock; int /*<<< orphan*/  dev; struct ieee80211_hw* hw; } ;
struct ath_rxbuf {int /*<<< orphan*/  list; int /*<<< orphan*/  bf_buf_addr; struct sk_buff* bf_mpdu; } ;
struct ath_rx_status {int rs_datalen; int flag; int /*<<< orphan*/  rs_tstamp; int /*<<< orphan*/  is_mybeacon; scalar_t__ rs_more; } ;
struct TYPE_3__ {int hw_caps; int rx_status_len; } ;
struct ath_hw {int imask; TYPE_1__ caps; } ;
struct ath_common {int /*<<< orphan*/  rx_bufsize; } ;
typedef  int /*<<< orphan*/  rs ;
typedef  enum ath9k_rx_qtype { ____Placeholder_ath9k_rx_qtype } ath9k_rx_qtype ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ATH9K_HW_CAP_EDMA ; 
 int ATH9K_INT_RXEOL ; 
 int ATH9K_INT_RXORN ; 
 int ATH9K_RX_QUEUE_HP ; 
 int ATH9K_RX_QUEUE_LP ; 
 int DMA_BIDIRECTIONAL ; 
 int DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 int PS_WAIT_FOR_BEACON ; 
 int PS_WAIT_FOR_CAB ; 
 int PS_WAIT_FOR_PSPOLL_DATA ; 
 int RX_FLAG_MMIC_STRIPPED ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_softc*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*,struct ieee80211_rx_status*,struct ieee80211_rx_status*) ; 
 scalar_t__ FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,struct sk_buff*,struct ieee80211_rx_status*,struct ieee80211_rx_status*,int) ; 
 struct ath_common* FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int FUNC10 (struct ath_softc*,struct sk_buff*,struct ieee80211_rx_status*,struct ieee80211_rx_status*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_softc*,struct ieee80211_rx_status*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ath_rxbuf* FUNC13 (struct ath_softc*,struct ieee80211_rx_status*,int) ; 
 struct ath_rxbuf* FUNC14 (struct ath_softc*,struct ieee80211_rx_status*) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_softc*,struct ath_rxbuf*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_softc*,struct ieee80211_rx_status*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct ath_softc*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ath_softc*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC19 (struct ath_common*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC29 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_frags ; 
 int /*<<< orphan*/  rx_oom_err ; 
 int /*<<< orphan*/  rx_too_many_frags_err ; 
 int /*<<< orphan*/  FUNC30 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct sk_buff*,int) ; 
 int FUNC33 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ) ; 

int FUNC38(struct ath_softc *sc, int flush, bool hp)
{
	struct ath_rxbuf *bf;
	struct sk_buff *skb = NULL, *requeue_skb, *hdr_skb;
	struct ieee80211_rx_status *rxs;
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC6(ah);
	struct ieee80211_hw *hw = sc->hw;
	int retval;
	struct ath_rx_status rs;
	enum ath9k_rx_qtype qtype;
	bool edma = !!(ah->caps.hw_caps & ATH9K_HW_CAP_EDMA);
	int dma_type;
	u64 tsf = 0;
	unsigned long flags;
	dma_addr_t new_buf_addr;
	unsigned int budget = 512;
	struct ieee80211_hdr *hdr;

	if (edma)
		dma_type = DMA_BIDIRECTIONAL;
	else
		dma_type = DMA_FROM_DEVICE;

	qtype = hp ? ATH9K_RX_QUEUE_HP : ATH9K_RX_QUEUE_LP;

	tsf = FUNC7(ah);

	do {
		bool decrypt_error = false;

		FUNC28(&rs, 0, sizeof(rs));
		if (edma)
			bf = FUNC13(sc, &rs, qtype);
		else
			bf = FUNC14(sc, &rs);

		if (!bf)
			break;

		skb = bf->bf_mpdu;
		if (!skb)
			continue;

		/*
		 * Take frame header from the first fragment and RX status from
		 * the last one.
		 */
		if (sc->rx.frag)
			hdr_skb = sc->rx.frag;
		else
			hdr_skb = skb;

		rxs = FUNC0(hdr_skb);
		FUNC28(rxs, 0, sizeof(struct ieee80211_rx_status));

		retval = FUNC10(sc, hdr_skb, &rs, rxs,
						 &decrypt_error, tsf);
		if (retval)
			goto requeue_drop_frag;

		/* Ensure we always have an skb to requeue once we are done
		 * processing the current buffer's skb */
		requeue_skb = FUNC19(common, common->rx_bufsize, GFP_ATOMIC);

		/* If there is no memory we ignore the current RX'd frame,
		 * tell hardware it can give us a new frame using the old
		 * skb and put it at the tail of the sc->rx.rxbuf list for
		 * processing. */
		if (!requeue_skb) {
			FUNC1(sc, rx_oom_err);
			goto requeue_drop_frag;
		}

		/* We will now give hardware our shiny new allocated skb */
		new_buf_addr = FUNC22(sc->dev, requeue_skb->data,
					      common->rx_bufsize, dma_type);
		if (FUNC37(FUNC23(sc->dev, new_buf_addr))) {
			FUNC21(requeue_skb);
			goto requeue_drop_frag;
		}

		/* Unmap the frame */
		FUNC24(sc->dev, bf->bf_buf_addr,
				 common->rx_bufsize, dma_type);

		bf->bf_mpdu = requeue_skb;
		bf->bf_buf_addr = new_buf_addr;

		FUNC32(skb, rs.rs_datalen + ah->caps.rx_status_len);
		if (ah->caps.rx_status_len)
			FUNC31(skb, ah->caps.rx_status_len);

		if (!rs.rs_more)
			FUNC5(common, hdr_skb, &rs,
						     rxs, decrypt_error);

		if (rs.rs_more) {
			FUNC1(sc, rx_frags);
			/*
			 * rs_more indicates chained descriptors which can be
			 * used to link buffers together for a sort of
			 * scatter-gather operation.
			 */
			if (sc->rx.frag) {
				/* too many fragments - cannot handle frame */
				FUNC21(sc->rx.frag);
				FUNC21(skb);
				FUNC1(sc, rx_too_many_frags_err);
				skb = NULL;
			}
			sc->rx.frag = skb;
			goto requeue;
		}

		if (sc->rx.frag) {
			int space = skb->len - FUNC33(hdr_skb);

			if (FUNC29(hdr_skb, 0, space, GFP_ATOMIC) < 0) {
				FUNC20(skb);
				FUNC1(sc, rx_oom_err);
				goto requeue_drop_frag;
			}

			sc->rx.frag = NULL;

			FUNC30(skb, FUNC32(hdr_skb, skb->len),
						  skb->len);
			FUNC21(skb);
			skb = hdr_skb;
		}

		if (rxs->flag & RX_FLAG_MMIC_STRIPPED)
			FUNC34(skb, skb->len - 8);

		FUNC35(&sc->sc_pm_lock, flags);
		if ((sc->ps_flags & (PS_WAIT_FOR_BEACON |
				     PS_WAIT_FOR_CAB |
				     PS_WAIT_FOR_PSPOLL_DATA)) ||
		    FUNC4(sc))
			FUNC18(sc, skb, rs.is_mybeacon);
		FUNC36(&sc->sc_pm_lock, flags);

		FUNC2(sc, &rs);
		FUNC3(sc, &rs, rxs);
		FUNC11(sc, &rs, skb);
		FUNC16(sc, &rs, skb);

		hdr = (struct ieee80211_hdr *)skb->data;
		if (FUNC25(hdr->frame_control))
			FUNC12(sc->sc_ah, skb, rs.rs_tstamp);

		FUNC26(hw, skb);

requeue_drop_frag:
		if (sc->rx.frag) {
			FUNC21(sc->rx.frag);
			sc->rx.frag = NULL;
		}
requeue:
		FUNC27(&bf->list, &sc->rx.rxbuf);

		if (!edma) {
			FUNC15(sc, bf, flush);
			if (!flush)
				FUNC8(ah);
		} else if (!flush) {
			FUNC17(sc, qtype);
		}

		if (!budget--)
			break;
	} while (1);

	if (!(ah->imask & ATH9K_INT_RXEOL)) {
		ah->imask |= (ATH9K_INT_RXEOL | ATH9K_INT_RXORN);
		FUNC9(ah);
	}

	return 0;
}