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
struct ksz_desc_info {int alloc; } ;
struct ksz_hw {struct ksz_desc_info rx_desc_info; } ;
struct ksz_dma_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  dma; scalar_t__ skb; } ;
struct ksz_desc {int dummy; } ;
struct dev_info {int /*<<< orphan*/  pdev; int /*<<< orphan*/  mtu; struct ksz_hw hw; } ;

/* Variables and functions */
 struct ksz_dma_buf* FUNC0 (struct ksz_desc*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_info*,struct ksz_dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_desc_info*,struct ksz_desc**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ksz_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ksz_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ksz_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct dev_info *adapter)
{
	int i;
	struct ksz_desc *desc;
	struct ksz_dma_buf *dma_buf;
	struct ksz_hw *hw = &adapter->hw;
	struct ksz_desc_info *info = &hw->rx_desc_info;

	for (i = 0; i < hw->rx_desc_info.alloc; i++) {
		FUNC3(info, &desc);

		dma_buf = FUNC0(desc);
		if (dma_buf->skb && dma_buf->len != adapter->mtu)
			FUNC2(adapter, dma_buf, PCI_DMA_FROMDEVICE);
		dma_buf->len = adapter->mtu;
		if (!dma_buf->skb)
			dma_buf->skb = FUNC1(dma_buf->len, GFP_ATOMIC);
		if (dma_buf->skb && !dma_buf->dma)
			dma_buf->dma = FUNC4(
				adapter->pdev,
				FUNC8(dma_buf->skb),
				dma_buf->len,
				PCI_DMA_FROMDEVICE);

		/* Set descriptor. */
		FUNC6(desc, dma_buf->dma);
		FUNC7(desc, dma_buf->len);
		FUNC5(desc);
	}
}