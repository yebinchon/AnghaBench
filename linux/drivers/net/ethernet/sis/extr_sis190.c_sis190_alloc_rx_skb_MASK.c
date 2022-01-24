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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct sis190_private {int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  rx_buf_sz; int /*<<< orphan*/  dev; } ;
struct RxDesc {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct RxDesc*) ; 
 int /*<<< orphan*/  FUNC5 (struct RxDesc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct sis190_private *tp,
					   struct RxDesc *desc)
{
	u32 rx_buf_sz = tp->rx_buf_sz;
	struct sk_buff *skb;
	dma_addr_t mapping;

	skb = FUNC1(tp->dev, rx_buf_sz);
	if (FUNC6(!skb))
		goto skb_alloc_failed;
	mapping = FUNC3(tp->pci_dev, skb->data, tp->rx_buf_sz,
			PCI_DMA_FROMDEVICE);
	if (FUNC2(tp->pci_dev, mapping))
		goto out;
	FUNC5(desc, mapping, rx_buf_sz);

	return skb;

out:
	FUNC0(skb);
skb_alloc_failed:
	FUNC4(desc);
	return NULL;
}