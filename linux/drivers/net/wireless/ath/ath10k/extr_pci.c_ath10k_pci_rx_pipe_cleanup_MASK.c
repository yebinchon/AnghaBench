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
struct sk_buff {scalar_t__ len; } ;
struct ath10k_pci_pipe {int /*<<< orphan*/  buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_ce_ring {int nentries; struct sk_buff** per_transfer_context; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* dest_ring; } ;
struct ath10k {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  paddr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct ath10k_pci_pipe *pci_pipe)
{
	struct ath10k *ar;
	struct ath10k_ce_pipe *ce_pipe;
	struct ath10k_ce_ring *ce_ring;
	struct sk_buff *skb;
	int i;

	ar = pci_pipe->hif_ce_state;
	ce_pipe = pci_pipe->ce_hdl;
	ce_ring = ce_pipe->dest_ring;

	if (!ce_ring)
		return;

	if (!pci_pipe->buf_sz)
		return;

	for (i = 0; i < ce_ring->nentries; i++) {
		skb = ce_ring->per_transfer_context[i];
		if (!skb)
			continue;

		ce_ring->per_transfer_context[i] = NULL;

		FUNC2(ar->dev, FUNC0(skb)->paddr,
				 skb->len + FUNC3(skb),
				 DMA_FROM_DEVICE);
		FUNC1(skb);
	}
}