#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned char* data; int /*<<< orphan*/  len; } ;
struct TYPE_13__ {int /*<<< orphan*/  dma_addr; struct sk_buff* skb; } ;
struct s_smt_fp_txd {TYPE_6__ txd_os; } ;
struct TYPE_11__ {int /*<<< orphan*/  a; } ;
struct TYPE_12__ {TYPE_4__ fddi_canon_addr; } ;
struct TYPE_9__ {scalar_t__ fddiESSSynchTxMode; } ;
struct TYPE_8__ {int /*<<< orphan*/  sync_bw_available; } ;
struct TYPE_14__ {int /*<<< orphan*/  DriverLock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  QueueSkb; int /*<<< orphan*/  SendSkbQueue; TYPE_3__* dev; } ;
struct s_smc {TYPE_5__ hw; TYPE_2__ mib; TYPE_1__ ess; TYPE_7__ os; } ;
typedef  TYPE_7__ skfddi_priv ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 int EN_IRQ_EOF ; 
 unsigned char FC_ASYNC_LLC ; 
 unsigned char FC_LLC_PRIOR ; 
 unsigned char FC_SYNC_BIT ; 
 int FIRST_FRAG ; 
 scalar_t__ FUNC1 (struct s_smc*,int) ; 
 int LAN_TX ; 
 int LAST_FRAG ; 
 int LOC_TX ; 
 int OUT_OF_TXD ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int QUEUE_A0 ; 
 int QUEUE_S ; 
 int RING_DOWN ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct s_smc*,unsigned char,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct s_smc *smc)
{
	skfddi_priv *bp = &smc->os;
	struct sk_buff *skb;
	unsigned char fc;
	int queue;
	struct s_smt_fp_txd *txd;	// Current TxD.
	dma_addr_t dma_address;
	unsigned long Flags;

	int frame_status;	// HWM tx frame status.

	FUNC7("send queued packets\n");
	for (;;) {
		// send first buffer from queue
		skb = FUNC8(&bp->SendSkbQueue);

		if (!skb) {
			FUNC7("queue empty\n");
			return;
		}		// queue empty !

		FUNC10(&bp->DriverLock, Flags);
		fc = skb->data[0];
		queue = (fc & FC_SYNC_BIT) ? QUEUE_S : QUEUE_A0;
#ifdef ESS
		// Check if the frame may/must be sent as a synchronous frame.

		if ((fc & ~(FC_SYNC_BIT | FC_LLC_PRIOR)) == FC_ASYNC_LLC) {
			// It's an LLC frame.
			if (!smc->ess.sync_bw_available)
				fc &= ~FC_SYNC_BIT; // No bandwidth available.

			else {	// Bandwidth is available.

				if (smc->mib.fddiESSSynchTxMode) {
					// Send as sync. frame.
					fc |= FC_SYNC_BIT;
				}
			}
		}
#endif				// ESS
		frame_status = FUNC4(smc, fc, 1, skb->len, queue);

		if ((frame_status & (LOC_TX | LAN_TX)) == 0) {
			// Unable to send the frame.

			if ((frame_status & RING_DOWN) != 0) {
				// Ring is down.
				FUNC7("Tx attempt while ring down.\n");
			} else if ((frame_status & OUT_OF_TXD) != 0) {
				FUNC7("%s: out of TXDs.\n", bp->dev->name);
			} else {
				FUNC7("%s: out of transmit resources",
					bp->dev->name);
			}

			// Note: We will retry the operation as soon as
			// transmit resources become available.
			FUNC9(&bp->SendSkbQueue, skb);
			FUNC11(&bp->DriverLock, Flags);
			return;	// Packet has been queued.

		}		// if (unable to send frame)

		bp->QueueSkb++;	// one packet less in local queue

		// source address in packet ?
		FUNC0(skb->data, smc->hw.fddi_canon_addr.a);

		txd = (struct s_smt_fp_txd *) FUNC1(smc, queue);

		dma_address = FUNC5(&bp->pdev, skb->data,
					     skb->len, PCI_DMA_TODEVICE);
		if (frame_status & LAN_TX) {
			txd->txd_os.skb = skb;			// save skb
			txd->txd_os.dma_addr = dma_address;	// save dma mapping
		}
		FUNC3(smc, skb->data, dma_address, skb->len,
                      frame_status | FIRST_FRAG | LAST_FRAG | EN_IRQ_EOF);

		if (!(frame_status & LAN_TX)) {		// local only frame
			FUNC6(&bp->pdev, dma_address,
					 skb->len, PCI_DMA_TODEVICE);
			FUNC2(skb);
		}
		FUNC11(&bp->DriverLock, Flags);
	}			// for

	return;			// never reached

}