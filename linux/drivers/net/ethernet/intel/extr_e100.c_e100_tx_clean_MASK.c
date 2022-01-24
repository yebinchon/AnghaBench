#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nic {struct net_device* netdev; int /*<<< orphan*/  cb_lock; int /*<<< orphan*/  cbs_avail; int /*<<< orphan*/  pdev; scalar_t__ cbs; struct cb* cb_to_clean; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_8__ {TYPE_2__ tbd; } ;
struct TYPE_9__ {TYPE_3__ tcb; } ;
struct cb {int status; TYPE_5__* skb; TYPE_4__ u; struct cb* next; } ;
struct TYPE_10__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  cb_complete ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_done ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct nic *nic)
{
	struct net_device *dev = nic->netdev;
	struct cb *cb;
	int tx_cleaned = 0;

	FUNC10(&nic->cb_lock);

	/* Clean CBs marked complete */
	for (cb = nic->cb_to_clean;
	    cb->status & FUNC0(cb_complete);
	    cb = nic->cb_to_clean = cb->next) {
		FUNC2(); /* read skb after status */
		FUNC6(nic, tx_done, KERN_DEBUG, nic->netdev,
			     "cb[%d]->status = 0x%04X\n",
			     (int)(((void*)cb - (void*)nic->cbs)/sizeof(struct cb)),
			     cb->status);

		if (FUNC5(cb->skb != NULL)) {
			dev->stats.tx_packets++;
			dev->stats.tx_bytes += cb->skb->len;

			FUNC9(nic->pdev,
				FUNC4(cb->u.tcb.tbd.buf_addr),
				FUNC3(cb->u.tcb.tbd.size),
				PCI_DMA_TODEVICE);
			FUNC1(cb->skb);
			cb->skb = NULL;
			tx_cleaned = 1;
		}
		cb->status = 0;
		nic->cbs_avail++;
	}

	FUNC11(&nic->cb_lock);

	/* Recover from running out of Tx resources in xmit_frame */
	if (FUNC12(tx_cleaned && FUNC7(nic->netdev)))
		FUNC8(nic->netdev);

	return tx_cleaned;
}