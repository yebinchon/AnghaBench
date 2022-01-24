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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;
struct be_wrb_params {int dummy; } ;
struct be_tx_obj {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_map_errors; } ;
struct be_adapter {TYPE_2__ drv_stats; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct be_tx_obj*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_tx_obj*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,struct be_tx_obj*,struct be_wrb_params*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct be_tx_obj*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,struct be_tx_obj*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_3__* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static u32 FUNC12(struct be_adapter *adapter, struct be_tx_obj *txo,
			   struct sk_buff *skb,
			   struct be_wrb_params *wrb_params)
{
	u32 i, copied = 0, wrb_cnt = FUNC11(skb);
	struct device *dev = &adapter->pdev->dev;
	bool map_single = false;
	u32 head;
	dma_addr_t busaddr;
	int len;

	head = FUNC0(txo);

	if (skb->len > skb->data_len) {
		len = FUNC9(skb);

		busaddr = FUNC5(dev, skb->data, len, DMA_TO_DEVICE);
		if (FUNC6(dev, busaddr))
			goto dma_err;
		map_single = true;
		FUNC1(txo, busaddr, len);
		copied += len;
	}

	for (i = 0; i < FUNC10(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC10(skb)->frags[i];
		len = FUNC8(frag);

		busaddr = FUNC7(dev, frag, 0, len, DMA_TO_DEVICE);
		if (FUNC6(dev, busaddr))
			goto dma_err;
		FUNC1(txo, busaddr, len);
		copied += len;
	}

	FUNC2(adapter, txo, wrb_params, skb, head);

	FUNC3(txo, skb);
	return wrb_cnt;

dma_err:
	adapter->drv_stats.dma_map_errors++;
	FUNC4(adapter, txo, head, map_single, copied);
	return 0;
}