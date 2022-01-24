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
typedef  int u32 ;
struct spider_net_hw_descr {int buf_addr; int data_error; int data_status; int dmac_cmd_status; int buf_size; int next_descr_addr; int result_size; int valid_size; } ;
struct spider_net_descr_chain {struct spider_net_descr* ring; struct spider_net_descr* tail; } ;
struct spider_net_descr {int /*<<< orphan*/ * skb; struct spider_net_descr* next; struct spider_net_hw_descr* hwdescr; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_desc_error; int /*<<< orphan*/  rx_desc_unk_state; } ;
struct spider_net_card {TYPE_2__ spider_stats; struct spider_net_descr_chain rx_chain; struct net_device* netdev; int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {int /*<<< orphan*/  dev; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int SPIDER_NET_DESCR_BAD_STATUS ; 
 int SPIDER_NET_DESCR_CARDOWNED ; 
 int SPIDER_NET_DESCR_COMPLETE ; 
 int SPIDER_NET_DESCR_FORCE_END ; 
 int SPIDER_NET_DESCR_FRAME_END ; 
 int SPIDER_NET_DESCR_NOT_IN_USE ; 
 int SPIDER_NET_DESCR_PROTECTION_ERROR ; 
 int SPIDER_NET_DESCR_RESPONSE_ERROR ; 
 int SPIDER_NET_DESTROY_RX_FLAGS ; 
 int /*<<< orphan*/  SPIDER_NET_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct spider_net_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct spider_net_card*) ; 
 int FUNC6 (struct spider_net_hw_descr*) ; 
 int /*<<< orphan*/  FUNC7 (struct spider_net_descr*,struct spider_net_card*) ; 

__attribute__((used)) static int
FUNC8(struct spider_net_card *card)
{
	struct net_device *dev = card->netdev;
	struct spider_net_descr_chain *chain = &card->rx_chain;
	struct spider_net_descr *descr = chain->tail;
	struct spider_net_hw_descr *hwdescr = descr->hwdescr;
	u32 hw_buf_addr;
	int status;

	status = FUNC6(hwdescr);

	/* Nothing in the descriptor, or ring must be empty */
	if ((status == SPIDER_NET_DESCR_CARDOWNED) ||
	    (status == SPIDER_NET_DESCR_NOT_IN_USE))
		return 0;

	/* descriptor definitively used -- move on tail */
	chain->tail = descr->next;

	/* unmap descriptor */
	hw_buf_addr = hwdescr->buf_addr;
	hwdescr->buf_addr = 0xffffffff;
	FUNC3(card->pdev, hw_buf_addr,
			SPIDER_NET_MAX_FRAME, PCI_DMA_FROMDEVICE);

	if ( (status == SPIDER_NET_DESCR_RESPONSE_ERROR) ||
	     (status == SPIDER_NET_DESCR_PROTECTION_ERROR) ||
	     (status == SPIDER_NET_DESCR_FORCE_END) ) {
		if (FUNC2(card))
			FUNC0(&dev->dev,
			       "dropping RX descriptor with state %d\n", status);
		dev->stats.rx_dropped++;
		goto bad_desc;
	}

	if ( (status != SPIDER_NET_DESCR_COMPLETE) &&
	     (status != SPIDER_NET_DESCR_FRAME_END) ) {
		if (FUNC2(card))
			FUNC0(&card->netdev->dev,
			       "RX descriptor with unknown state %d\n", status);
		card->spider_stats.rx_desc_unk_state++;
		goto bad_desc;
	}

	/* The cases we'll throw away the packet immediately */
	if (hwdescr->data_error & SPIDER_NET_DESTROY_RX_FLAGS) {
		if (FUNC2(card))
			FUNC0(&card->netdev->dev,
			       "error in received descriptor found, "
			       "data_status=x%08x, data_error=x%08x\n",
			       hwdescr->data_status, hwdescr->data_error);
		goto bad_desc;
	}

	if (hwdescr->dmac_cmd_status & SPIDER_NET_DESCR_BAD_STATUS) {
		FUNC0(&card->netdev->dev, "bad status, cmd_status=x%08x\n",
			       hwdescr->dmac_cmd_status);
		FUNC4("buf_addr=x%08x\n", hw_buf_addr);
		FUNC4("buf_size=x%08x\n", hwdescr->buf_size);
		FUNC4("next_descr_addr=x%08x\n", hwdescr->next_descr_addr);
		FUNC4("result_size=x%08x\n", hwdescr->result_size);
		FUNC4("valid_size=x%08x\n", hwdescr->valid_size);
		FUNC4("data_status=x%08x\n", hwdescr->data_status);
		FUNC4("data_error=x%08x\n", hwdescr->data_error);
		FUNC4("which=%ld\n", descr - card->rx_chain.ring);

		card->spider_stats.rx_desc_error++;
		goto bad_desc;
	}

	/* Ok, we've got a packet in descr */
	FUNC7(descr, card);
	descr->skb = NULL;
	hwdescr->dmac_cmd_status = SPIDER_NET_DESCR_NOT_IN_USE;
	return 1;

bad_desc:
	if (FUNC2(card))
		FUNC5(card);
	FUNC1(descr->skb);
	descr->skb = NULL;
	hwdescr->dmac_cmd_status = SPIDER_NET_DESCR_NOT_IN_USE;
	return 0;
}