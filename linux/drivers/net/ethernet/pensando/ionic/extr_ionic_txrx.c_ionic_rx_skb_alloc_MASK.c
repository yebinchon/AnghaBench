#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ionic_rx_stats {int /*<<< orphan*/  dma_map_err; int /*<<< orphan*/  alloc_err; } ;
struct ionic_queue {int /*<<< orphan*/  name; struct ionic_lif* lif; } ;
struct ionic_lif {TYPE_1__* ionic; struct net_device* netdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct net_device*,unsigned int) ; 
 struct ionic_rx_stats* FUNC5 (struct ionic_queue*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct ionic_queue *q, unsigned int len,
					  dma_addr_t *dma_addr)
{
	struct ionic_lif *lif = q->lif;
	struct ionic_rx_stats *stats;
	struct net_device *netdev;
	struct sk_buff *skb;
	struct device *dev;

	netdev = lif->netdev;
	dev = lif->ionic->dev;
	stats = FUNC5(q);
	skb = FUNC4(netdev, len);
	if (!skb) {
		FUNC3("%s: SKB alloc failed on %s!\n",
				     netdev->name, q->name);
		stats->alloc_err++;
		return NULL;
	}

	*dma_addr = FUNC1(dev, skb->data, len, DMA_FROM_DEVICE);
	if (FUNC2(dev, *dma_addr)) {
		FUNC0(skb);
		FUNC3("%s: DMA single map failed on %s!\n",
				     netdev->name, q->name);
		stats->dma_map_err++;
		return NULL;
	}

	return skb;
}