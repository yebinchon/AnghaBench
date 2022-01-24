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
struct netfront_queue {int id; int /*<<< orphan*/  gref_tx_head; int /*<<< orphan*/  gref_rx_head; void** grant_rx_ref; int /*<<< orphan*/ ** rx_skbs; int /*<<< orphan*/ ** grant_tx_page; void** grant_tx_ref; int /*<<< orphan*/ * tx_skbs; scalar_t__ tx_skb_freelist; int /*<<< orphan*/  name; TYPE_2__* info; int /*<<< orphan*/  rx_refill_timer; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  tx_lock; } ;
struct TYPE_4__ {TYPE_1__* xbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* GRANT_INVALID_REF ; 
 unsigned short NET_RX_RING_SIZE ; 
 unsigned short NET_TX_RING_SIZE ; 
 scalar_t__ FUNC0 (unsigned short,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  rx_refill_timeout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct netfront_queue *queue)
{
	unsigned short i;
	int err = 0;
	char *devid;

	FUNC5(&queue->tx_lock);
	FUNC5(&queue->rx_lock);

	FUNC7(&queue->rx_refill_timer, rx_refill_timeout, 0);

	devid = FUNC6(queue->info->xbdev->nodename, '/') + 1;
	FUNC4(queue->name, sizeof(queue->name), "vif%s-q%u",
		 devid, queue->id);

	/* Initialise tx_skbs as a free chain containing every entry. */
	queue->tx_skb_freelist = 0;
	for (i = 0; i < NET_TX_RING_SIZE; i++) {
		FUNC3(&queue->tx_skbs[i], i+1);
		queue->grant_tx_ref[i] = GRANT_INVALID_REF;
		queue->grant_tx_page[i] = NULL;
	}

	/* Clear out rx_skbs */
	for (i = 0; i < NET_RX_RING_SIZE; i++) {
		queue->rx_skbs[i] = NULL;
		queue->grant_rx_ref[i] = GRANT_INVALID_REF;
	}

	/* A grant for every tx ring slot */
	if (FUNC0(NET_TX_RING_SIZE,
					  &queue->gref_tx_head) < 0) {
		FUNC2("can't alloc tx grant refs\n");
		err = -ENOMEM;
		goto exit;
	}

	/* A grant for every rx ring slot */
	if (FUNC0(NET_RX_RING_SIZE,
					  &queue->gref_rx_head) < 0) {
		FUNC2("can't alloc rx grant refs\n");
		err = -ENOMEM;
		goto exit_free_tx;
	}

	return 0;

 exit_free_tx:
	FUNC1(queue->gref_tx_head);
 exit:
	return err;
}