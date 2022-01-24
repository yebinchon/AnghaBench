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
struct xgbe_prv_data {char* ecc_name; unsigned int channel_count; char* dma_irq_name; int queue_index; int /*<<< orphan*/  dev_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  ecc_irq; TYPE_1__* vdata; int /*<<< orphan*/  dma_irq; struct xgbe_prv_data** channel; int /*<<< orphan*/  affinity_mask; int /*<<< orphan*/  per_channel_irq; int /*<<< orphan*/  tasklet_ecc; int /*<<< orphan*/  tasklet_dev; struct net_device* netdev; } ;
struct xgbe_channel {char* ecc_name; unsigned int channel_count; char* dma_irq_name; int queue_index; int /*<<< orphan*/  dev_irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  ecc_irq; TYPE_1__* vdata; int /*<<< orphan*/  dma_irq; struct xgbe_channel** channel; int /*<<< orphan*/  affinity_mask; int /*<<< orphan*/  per_channel_irq; int /*<<< orphan*/  tasklet_ecc; int /*<<< orphan*/  tasklet_dev; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ ecc_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xgbe_prv_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  xgbe_dma_isr ; 
 int /*<<< orphan*/  xgbe_ecc_isr ; 
 int /*<<< orphan*/  xgbe_ecc_isr_task ; 
 int /*<<< orphan*/  xgbe_isr ; 
 int /*<<< orphan*/  xgbe_isr_task ; 

__attribute__((used)) static int FUNC7(struct xgbe_prv_data *pdata)
{
	struct xgbe_channel *channel;
	struct net_device *netdev = pdata->netdev;
	unsigned int i;
	int ret;

	FUNC6(&pdata->tasklet_dev, xgbe_isr_task, (unsigned long)pdata);
	FUNC6(&pdata->tasklet_ecc, xgbe_ecc_isr_task,
		     (unsigned long)pdata);

	ret = FUNC1(pdata->dev, pdata->dev_irq, xgbe_isr, 0,
			       FUNC4(netdev), pdata);
	if (ret) {
		FUNC3(netdev, "error requesting irq %d\n",
			     pdata->dev_irq);
		return ret;
	}

	if (pdata->vdata->ecc_support && (pdata->dev_irq != pdata->ecc_irq)) {
		ret = FUNC1(pdata->dev, pdata->ecc_irq, xgbe_ecc_isr,
				       0, pdata->ecc_name, pdata);
		if (ret) {
			FUNC3(netdev, "error requesting ecc irq %d\n",
				     pdata->ecc_irq);
			goto err_dev_irq;
		}
	}

	if (!pdata->per_channel_irq)
		return 0;

	for (i = 0; i < pdata->channel_count; i++) {
		channel = pdata->channel[i];
		FUNC5(channel->dma_irq_name,
			 sizeof(channel->dma_irq_name) - 1,
			 "%s-TxRx-%u", FUNC4(netdev),
			 channel->queue_index);

		ret = FUNC1(pdata->dev, channel->dma_irq,
				       xgbe_dma_isr, 0,
				       channel->dma_irq_name, channel);
		if (ret) {
			FUNC3(netdev, "error requesting irq %d\n",
				     channel->dma_irq);
			goto err_dma_irq;
		}

		FUNC2(channel->dma_irq,
				      &channel->affinity_mask);
	}

	return 0;

err_dma_irq:
	/* Using an unsigned int, 'i' will go to UINT_MAX and exit */
	for (i--; i < pdata->channel_count; i--) {
		channel = pdata->channel[i];

		FUNC2(channel->dma_irq, NULL);
		FUNC0(pdata->dev, channel->dma_irq, channel);
	}

	if (pdata->vdata->ecc_support && (pdata->dev_irq != pdata->ecc_irq))
		FUNC0(pdata->dev, pdata->ecc_irq, pdata);

err_dev_irq:
	FUNC0(pdata->dev, pdata->dev_irq, pdata);

	return ret;
}