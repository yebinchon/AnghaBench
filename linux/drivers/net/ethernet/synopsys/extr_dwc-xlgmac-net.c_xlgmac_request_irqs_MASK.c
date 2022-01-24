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
struct xlgmac_pdata {unsigned int channel_count; int queue_index; int /*<<< orphan*/  dev_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_irq; int /*<<< orphan*/  dma_irq_name; struct xlgmac_pdata* channel_head; int /*<<< orphan*/  per_channel_irq; struct net_device* netdev; } ;
struct xlgmac_channel {unsigned int channel_count; int queue_index; int /*<<< orphan*/  dev_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_irq; int /*<<< orphan*/  dma_irq_name; struct xlgmac_channel* channel_head; int /*<<< orphan*/  per_channel_irq; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlgmac_pdata*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*,int) ; 
 int /*<<< orphan*/  xlgmac_dma_isr ; 
 int /*<<< orphan*/  xlgmac_isr ; 

__attribute__((used)) static int FUNC5(struct xlgmac_pdata *pdata)
{
	struct net_device *netdev = pdata->netdev;
	struct xlgmac_channel *channel;
	unsigned int i;
	int ret;

	ret = FUNC1(pdata->dev, pdata->dev_irq, xlgmac_isr,
			       IRQF_SHARED, netdev->name, pdata);
	if (ret) {
		FUNC2(netdev, "error requesting irq %d\n",
			     pdata->dev_irq);
		return ret;
	}

	if (!pdata->per_channel_irq)
		return 0;

	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		FUNC4(channel->dma_irq_name,
			 sizeof(channel->dma_irq_name) - 1,
			 "%s-TxRx-%u", FUNC3(netdev),
			 channel->queue_index);

		ret = FUNC1(pdata->dev, channel->dma_irq,
				       xlgmac_dma_isr, 0,
				       channel->dma_irq_name, channel);
		if (ret) {
			FUNC2(netdev, "error requesting irq %d\n",
				     channel->dma_irq);
			goto err_irq;
		}
	}

	return 0;

err_irq:
	/* Using an unsigned int, 'i' will go to UINT_MAX and exit */
	for (i--, channel--; i < pdata->channel_count; i--, channel--)
		FUNC0(pdata->dev, channel->dma_irq, channel);

	FUNC0(pdata->dev, pdata->dev_irq, pdata);

	return ret;
}