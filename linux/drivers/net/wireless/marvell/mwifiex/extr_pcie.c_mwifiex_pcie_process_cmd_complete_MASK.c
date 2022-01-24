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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {struct sk_buff* cmdrsp_buf; int /*<<< orphan*/  dev; struct sk_buff* cmd_buf; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int /*<<< orphan*/  cmdrsp_addr_hi; int /*<<< orphan*/  cmdrsp_addr_lo; scalar_t__ sleep_cookie; } ;
struct mwifiex_adapter {scalar_t__ ps_state; int cmd_resp_received; TYPE_2__* curr_cmd; int /*<<< orphan*/  intf_hdr_len; int /*<<< orphan*/  upld_buf; struct pcie_service_card* card; } ;
struct TYPE_4__ {struct sk_buff* resp_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  CPU_INTR_SLEEP_CFM_DONE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MWIFIEX_MAX_DELAY_COUNT ; 
 int /*<<< orphan*/  MWIFIEX_SIZE_OF_CMD_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  MWIFIEX_SLEEP_COOKIE_SIZE ; 
 scalar_t__ MWIFIEX_UPLD_SIZE ; 
 int /*<<< orphan*/  PCIE_CPU_INT_EVENT ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ PS_STATE_SLEEP_CFM ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct mwifiex_adapter*,struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_adapter*) ; 
 scalar_t__ FUNC9 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct mwifiex_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct mwifiex_adapter*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct mwifiex_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u32 ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 

__attribute__((used)) static int FUNC20(struct mwifiex_adapter *adapter)
{
	struct pcie_service_card *card = adapter->card;
	const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
	struct sk_buff *skb = card->cmdrsp_buf;
	int count = 0;
	u16 rx_len;

	FUNC5(adapter, CMD,
		    "info: Rx CMD Response\n");

	if (adapter->curr_cmd)
		FUNC11(adapter, skb, PCI_DMA_FROMDEVICE);
	else
		FUNC13(card->dev,
					    FUNC0(skb),
					    MWIFIEX_UPLD_SIZE,
					    PCI_DMA_FROMDEVICE);

	/* Unmap the command as a response has been received. */
	if (card->cmd_buf) {
		FUNC11(adapter, card->cmd_buf,
					 PCI_DMA_TODEVICE);
		FUNC1(card->cmd_buf);
		card->cmd_buf = NULL;
	}

	rx_len = FUNC2(skb->data);
	FUNC17(skb, MWIFIEX_UPLD_SIZE - skb->len);
	FUNC18(skb, rx_len);

	if (!adapter->curr_cmd) {
		if (adapter->ps_state == PS_STATE_SLEEP_CFM) {
			FUNC14(card->dev,
						FUNC0(skb),
						MWIFIEX_SLEEP_COOKIE_SIZE,
						PCI_DMA_FROMDEVICE);
			if (FUNC12(adapter,
					      PCIE_CPU_INT_EVENT,
					      CPU_INTR_SLEEP_CFM_DONE)) {
				FUNC5(adapter, ERROR,
					    "Write register failed\n");
				return -1;
			}
			FUNC6(adapter,
						       MWIFIEX_MAX_DELAY_COUNT);
			FUNC11(adapter, skb,
						 PCI_DMA_FROMDEVICE);
			FUNC15(skb, adapter->intf_hdr_len);
			while (reg->sleep_cookie && (count++ < 10) &&
			       FUNC9(adapter))
				FUNC19(50, 60);
			FUNC8(adapter);
			FUNC10(adapter, skb->data,
							   skb->len);
		} else {
			FUNC5(adapter, ERROR,
				    "There is no command but got cmdrsp\n");
		}
		FUNC3(adapter->upld_buf, skb->data,
		       FUNC4(u32, MWIFIEX_SIZE_OF_CMD_BUFFER, skb->len));
		FUNC16(skb, adapter->intf_hdr_len);
		if (FUNC7(adapter, skb, MWIFIEX_UPLD_SIZE,
					   PCI_DMA_FROMDEVICE))
			return -1;
	} else if (FUNC9(adapter)) {
		FUNC15(skb, adapter->intf_hdr_len);
		adapter->curr_cmd->resp_skb = skb;
		adapter->cmd_resp_received = true;
		/* Take the pointer and set it to CMD node and will
		   return in the response complete callback */
		card->cmdrsp_buf = NULL;

		/* Clear the cmd-rsp buffer address in scratch registers. This
		   will prevent firmware from writing to the same response
		   buffer again. */
		if (FUNC12(adapter, reg->cmdrsp_addr_lo, 0)) {
			FUNC5(adapter, ERROR,
				    "cmd_done: failed to clear cmd_rsp_addr_lo\n");
			return -1;
		}
		/* Write the upper 32bits of the cmdrsp buffer physical
		   address */
		if (FUNC12(adapter, reg->cmdrsp_addr_hi, 0)) {
			FUNC5(adapter, ERROR,
				    "cmd_done: failed to clear cmd_rsp_addr_hi\n");
			return -1;
		}
	}

	return 0;
}