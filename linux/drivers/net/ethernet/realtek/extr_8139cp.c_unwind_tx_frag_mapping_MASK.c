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
struct sk_buff {int dummy; } ;
struct cp_private {TYPE_1__* pdev; struct cp_desc* tx_ring; int /*<<< orphan*/ ** tx_skb; } ;
struct cp_desc {int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct cp_private *cp, struct sk_buff *skb,
				   int first, int entry_last)
{
	int frag, index;
	struct cp_desc *txd;
	skb_frag_t *this_frag;
	for (frag = 0; frag+first < entry_last; frag++) {
		index = first+frag;
		cp->tx_skb[index] = NULL;
		txd = &cp->tx_ring[index];
		this_frag = &FUNC3(skb)->frags[frag];
		FUNC0(&cp->pdev->dev, FUNC1(txd->addr),
				 FUNC2(this_frag), PCI_DMA_TODEVICE);
	}
}