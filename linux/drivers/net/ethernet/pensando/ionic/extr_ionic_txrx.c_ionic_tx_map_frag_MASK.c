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
struct ionic_tx_stats {int /*<<< orphan*/  dma_map_err; } ;
struct ionic_queue {int /*<<< orphan*/  name; TYPE_3__* lif; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {TYPE_2__* netdev; TYPE_1__* ionic; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ionic_tx_stats* FUNC2 (struct ionic_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static dma_addr_t FUNC4(struct ionic_queue *q, const skb_frag_t *frag,
				    size_t offset, size_t len)
{
	struct ionic_tx_stats *stats = FUNC2(q);
	struct device *dev = q->lif->ionic->dev;
	dma_addr_t dma_addr;

	dma_addr = FUNC3(dev, frag, offset, len, DMA_TO_DEVICE);
	if (FUNC0(dev, dma_addr)) {
		FUNC1("%s: DMA frag map failed on %s!\n",
				     q->lif->netdev->name, q->name);
		stats->dma_map_err++;
	}
	return dma_addr;
}