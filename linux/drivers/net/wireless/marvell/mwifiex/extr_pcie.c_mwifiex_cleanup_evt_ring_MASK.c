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
struct pcie_service_card {struct sk_buff** evt_buf_list; struct mwifiex_evt_buf_desc** evtbd_ring; } ;
struct mwifiex_evt_buf_desc {int dummy; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int MWIFIEX_MAX_EVT_BD ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_evt_buf_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	struct mwifiex_evt_buf_desc *desc;
	struct sk_buff *skb;
	int i;

	for (i = 0; i < MWIFIEX_MAX_EVT_BD; i++) {
		desc = card->evtbd_ring[i];
		if (card->evt_buf_list[i]) {
			skb = card->evt_buf_list[i];
			FUNC2(adapter, skb,
						 PCI_DMA_FROMDEVICE);
			FUNC0(skb);
		}
		card->evt_buf_list[i] = NULL;
		FUNC1(desc, 0, sizeof(*desc));
	}

	return;
}