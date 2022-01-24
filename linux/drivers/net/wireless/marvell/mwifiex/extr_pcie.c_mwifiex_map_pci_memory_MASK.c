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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct pcie_service_card {int /*<<< orphan*/  dev; } ;
struct mwifiex_dma_mapping {size_t len; int /*<<< orphan*/  addr; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct mwifiex_dma_mapping*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static int
FUNC4(struct mwifiex_adapter *adapter, struct sk_buff *skb,
		       size_t size, int flags)
{
	struct pcie_service_card *card = adapter->card;
	struct mwifiex_dma_mapping mapping;

	mapping.addr = FUNC3(card->dev, skb->data, size, flags);
	if (FUNC2(card->dev, mapping.addr)) {
		FUNC0(adapter, ERROR, "failed to map pci memory!\n");
		return -1;
	}
	mapping.len = size;
	FUNC1(skb, &mapping);
	return 0;
}