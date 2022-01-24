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
struct slic_tx_queue {unsigned int done_idx; struct slic_tx_buffer* txbuffs; } ;
struct slic_tx_buffer {TYPE_3__* skb; } ;
struct TYPE_5__ {unsigned int tx_bytes; unsigned int tx_packets; int /*<<< orphan*/  syncp; } ;
struct slic_device {TYPE_2__ stats; TYPE_1__* pdev; struct net_device* netdev; struct slic_tx_queue txq; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 unsigned int SLIC_INVALID_STAT_DESC_IDX ; 
 unsigned int SLIC_MAX_TX_COMPLETIONS ; 
 scalar_t__ SLIC_MIN_TX_WAKEUP_DESCS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct slic_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slic_tx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_addr ; 
 int /*<<< orphan*/  map_len ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,unsigned int) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct slic_tx_queue*) ; 
 unsigned int FUNC10 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct slic_device *sdev)
{
	struct slic_tx_queue *txq = &sdev->txq;
	struct net_device *dev = sdev->netdev;
	struct slic_tx_buffer *buff;
	unsigned int frames = 0;
	unsigned int bytes = 0;
	unsigned int idx;

	/* Limit processing to SLIC_MAX_TX_COMPLETIONS frames to avoid that new
	 * completions during processing keeps the loop running endlessly.
	 */
	do {
		idx = FUNC10(sdev);
		if (idx == SLIC_INVALID_STAT_DESC_IDX)
			break;

		txq->done_idx = idx;
		buff = &txq->txbuffs[idx];

		if (FUNC14(!buff->skb)) {
			FUNC4(dev,
				    "no skb found for desc idx %i\n", idx);
			continue;
		}
		FUNC3(&sdev->pdev->dev,
				 FUNC1(buff, map_addr),
				 FUNC2(buff, map_len), DMA_TO_DEVICE);

		bytes += buff->skb->len;
		frames++;

		FUNC0(buff->skb);
		buff->skb = NULL;
	} while (frames < SLIC_MAX_TX_COMPLETIONS);
	/* make sure xmit sees the new value for done_idx */
	FUNC11();

	FUNC12(&sdev->stats.syncp);
	sdev->stats.tx_bytes += bytes;
	sdev->stats.tx_packets += frames;
	FUNC13(&sdev->stats.syncp);

	FUNC6(dev);
	if (FUNC5(dev) &&
	    (FUNC9(txq) >= SLIC_MIN_TX_WAKEUP_DESCS))
		FUNC8(dev);
	FUNC7(dev);
}