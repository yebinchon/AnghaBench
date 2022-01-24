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
struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int read_ptr; } ;
struct il_tx_queue {TYPE_1__ q; struct sk_buff** skbs; int /*<<< orphan*/ * meta; scalar_t__ tfds; } ;
struct il_tfd {int dummy; } ;
struct il_priv {struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int IL_NUM_OF_TBS ; 
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct il_tfd*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_tfd*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct il_tfd*,int) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct il_priv *il, struct il_tx_queue *txq)
{
	struct il_tfd *tfd_tmp = (struct il_tfd *)txq->tfds;
	struct il_tfd *tfd;
	struct pci_dev *dev = il->pci_dev;
	int idx = txq->q.read_ptr;
	int i;
	int num_tbs;

	tfd = &tfd_tmp[idx];

	/* Sanity check on number of chunks */
	num_tbs = FUNC4(tfd);

	if (num_tbs >= IL_NUM_OF_TBS) {
		FUNC0("Too many chunks: %i\n", num_tbs);
		/* @todo issue fatal error, it is quite serious situation */
		return;
	}

	/* Unmap tx_cmd */
	if (num_tbs)
		FUNC7(dev, FUNC2(&txq->meta[idx], mapping),
				 FUNC3(&txq->meta[idx], len),
				 PCI_DMA_BIDIRECTIONAL);

	/* Unmap chunks, if any. */
	for (i = 1; i < num_tbs; i++)
		FUNC7(dev, FUNC5(tfd, i),
				 FUNC6(tfd, i),
				 PCI_DMA_TODEVICE);

	/* free SKB */
	if (txq->skbs) {
		struct sk_buff *skb = txq->skbs[txq->q.read_ptr];

		/* can be called from irqs-disabled context */
		if (skb) {
			FUNC1(skb);
			txq->skbs[txq->q.read_ptr] = NULL;
		}
	}
}