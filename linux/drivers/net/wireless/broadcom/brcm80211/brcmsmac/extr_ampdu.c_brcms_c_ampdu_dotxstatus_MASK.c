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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct tx_status {int status; int frameid; } ;
struct sk_buff {size_t priority; scalar_t__ data; } ;
struct scb_ampdu_tid_ini {int dummy; } ;
struct scb_ampdu {struct scb_ampdu_tid_ini* ini; } ;
struct scb {struct scb_ampdu scb_ampdu; } ;
struct ieee80211_tx_info {int dummy; } ;
struct d11txh {int /*<<< orphan*/  MacTxControlLow; } ;
struct brcms_c_info {TYPE_1__* hw; } ;
struct ampdu_info {struct brcms_c_info* wlc; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * di; TYPE_2__* d11core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_RANGE_TRANSMITTED ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int TXC_AMPDU_LAST ; 
 int TXC_AMPDU_MASK ; 
 int TXC_AMPDU_SHIFT ; 
 int TXFID_QUEUE_MASK ; 
 int TXS_V ; 
 int TX_STATUS_ACK_RCV ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ampdu_info*,struct scb*,struct sk_buff*,struct tx_status*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frmtxstatus ; 
 int /*<<< orphan*/  frmtxstatus2 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct d11txh*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void
FUNC9(struct ampdu_info *ampdu, struct scb *scb,
		     struct sk_buff *p, struct tx_status *txs)
{
	struct scb_ampdu *scb_ampdu;
	struct brcms_c_info *wlc = ampdu->wlc;
	struct scb_ampdu_tid_ini *ini;
	u32 s1 = 0, s2 = 0;
	struct ieee80211_tx_info *tx_info;

	tx_info = FUNC1(p);

	/* BMAC_NOTE: For the split driver, second level txstatus comes later
	 * So if the ACK was received then wait for the second level else just
	 * call the first one
	 */
	if (txs->status & TX_STATUS_ACK_RCV) {
		u8 status_delay = 0;

		/* wait till the next 8 bytes of txstatus is available */
		s1 = FUNC2(wlc->hw->d11core, FUNC0(frmtxstatus));
		while ((s1 & TXS_V) == 0) {
			FUNC8(1);
			status_delay++;
			if (status_delay > 10)
				return; /* error condition */
			s1 = FUNC2(wlc->hw->d11core,
					 FUNC0(frmtxstatus));
		}

		s2 = FUNC2(wlc->hw->d11core, FUNC0(frmtxstatus2));
	}

	if (scb) {
		scb_ampdu = &scb->scb_ampdu;
		ini = &scb_ampdu->ini[p->priority];
		FUNC3(ampdu, scb, p, txs, s1, s2);
	} else {
		/* loop through all pkts and free */
		u8 queue = txs->frameid & TXFID_QUEUE_MASK;
		struct d11txh *txh;
		u16 mcl;
		while (p) {
			tx_info = FUNC1(p);
			txh = (struct d11txh *) p->data;
			FUNC7(&wlc->hw->d11core->dev, txh,
					   sizeof(*txh));
			mcl = FUNC6(txh->MacTxControlLow);
			FUNC4(p);
			/* break out if last packet of ampdu */
			if (((mcl & TXC_AMPDU_MASK) >> TXC_AMPDU_SHIFT) ==
			    TXC_AMPDU_LAST)
				break;
			p = FUNC5(wlc->hw->di[queue],
					   DMA_RANGE_TRANSMITTED);
		}
	}
}