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
struct mwifiex_adapter {struct pcie_service_card* card; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MWIFIEX_UPLD_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	struct sk_buff *skb;

	/* Allocate memory for receiving command response data */
	skb = FUNC0(MWIFIEX_UPLD_SIZE);
	if (!skb) {
		FUNC1(adapter, ERROR,
			    "Unable to allocate skb for command response data.\n");
		return -ENOMEM;
	}
	FUNC3(skb, MWIFIEX_UPLD_SIZE);
	if (FUNC2(adapter, skb, MWIFIEX_UPLD_SIZE,
				   PCI_DMA_FROMDEVICE))
		return -1;

	card->cmdrsp_buf = skb;

	return 0;
}