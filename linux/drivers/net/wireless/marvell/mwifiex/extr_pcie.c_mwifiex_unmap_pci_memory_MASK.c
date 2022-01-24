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
struct pcie_service_card {int /*<<< orphan*/  dev; } ;
struct mwifiex_dma_mapping {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct mwifiex_dma_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mwifiex_adapter *adapter,
				     struct sk_buff *skb, int flags)
{
	struct pcie_service_card *card = adapter->card;
	struct mwifiex_dma_mapping mapping;

	FUNC0(skb, &mapping);
	FUNC1(card->dev, mapping.addr, mapping.len, flags);
}