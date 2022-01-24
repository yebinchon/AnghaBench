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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct pcie_service_card {int /*<<< orphan*/  dev; struct sk_buff* cmdrsp_buf; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;
typedef  int /*<<< orphan*/  sleep_cookie ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 scalar_t__ MWIFIEX_DEF_SLEEP_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct mwifiex_adapter *adapter,
					   u32 max_delay_loop_cnt)
{
	struct pcie_service_card *card = adapter->card;
	u8 *buffer;
	u32 sleep_cookie, count;
	struct sk_buff *cmdrsp = card->cmdrsp_buf;

	for (count = 0; count < max_delay_loop_cnt; count++) {
		FUNC3(card->dev,
					    FUNC0(cmdrsp),
					    sizeof(sleep_cookie),
					    PCI_DMA_FROMDEVICE);
		buffer = cmdrsp->data;
		sleep_cookie = FUNC1(buffer);

		if (sleep_cookie == MWIFIEX_DEF_SLEEP_COOKIE) {
			FUNC2(adapter, INFO,
				    "sleep cookie found at count %d\n", count);
			break;
		}
		FUNC4(card->dev,
					       FUNC0(cmdrsp),
					       sizeof(sleep_cookie),
					       PCI_DMA_FROMDEVICE);
		FUNC5(20, 30);
	}

	if (count >= max_delay_loop_cnt)
		FUNC2(adapter, INFO,
			    "max count reached while accessing sleep cookie\n");
}