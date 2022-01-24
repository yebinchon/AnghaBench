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
struct sk_buff {int dummy; } ;
struct pcie_service_card {struct sk_buff* cmdrsp_buf; } ;
struct mwifiex_adapter {int /*<<< orphan*/  intf_hdr_len; struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  MWIFIEX_UPLD_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC0 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mwifiex_adapter *adapter,
					struct sk_buff *skb)
{
	struct pcie_service_card *card = adapter->card;

	if (skb) {
		card->cmdrsp_buf = skb;
		FUNC1(card->cmdrsp_buf, adapter->intf_hdr_len);
		if (FUNC0(adapter, skb, MWIFIEX_UPLD_SIZE,
					   PCI_DMA_FROMDEVICE))
			return -1;
	}

	return 0;
}