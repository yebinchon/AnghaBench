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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {int ctrlmode; void* echo_skb; int /*<<< orphan*/  echo_skb_max; } ;
struct TYPE_4__ {int /*<<< orphan*/  rxsize; int /*<<< orphan*/  txsize; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct grcan_dma {TYPE_2__ tx; } ;
struct grcan_priv {int resetting; int closing; void* echo_skb; void* txdlc; int /*<<< orphan*/  lock; TYPE_3__ can; int /*<<< orphan*/  napi; TYPE_1__ config; struct grcan_dma dma; } ;

/* Variables and functions */
 int CAN_CTRLMODE_LISTENONLY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  grcan_interrupt ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct grcan_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev)
{
	struct grcan_priv *priv = FUNC8(dev);
	struct grcan_dma *dma = &priv->dma;
	unsigned long flags;
	int err;

	/* Allocate memory */
	err = FUNC1(dev, priv->config.txsize,
					 priv->config.rxsize);
	if (err) {
		FUNC7(dev, "could not allocate DMA buffers\n");
		return err;
	}

	priv->echo_skb = FUNC4(dma->tx.size, sizeof(*priv->echo_skb),
				 GFP_KERNEL);
	if (!priv->echo_skb) {
		err = -ENOMEM;
		goto exit_free_dma_buffers;
	}
	priv->can.echo_skb_max = dma->tx.size;
	priv->can.echo_skb = priv->echo_skb;

	priv->txdlc = FUNC4(dma->tx.size, sizeof(*priv->txdlc), GFP_KERNEL);
	if (!priv->txdlc) {
		err = -ENOMEM;
		goto exit_free_echo_skb;
	}

	/* Get can device up */
	err = FUNC10(dev);
	if (err)
		goto exit_free_txdlc;

	err = FUNC11(dev->irq, grcan_interrupt, IRQF_SHARED,
			  dev->name, dev);
	if (err)
		goto exit_close_candev;

	FUNC12(&priv->lock, flags);

	FUNC6(&priv->napi);
	FUNC3(dev);
	if (!(priv->can.ctrlmode & CAN_CTRLMODE_LISTENONLY))
		FUNC9(dev);
	priv->resetting = false;
	priv->closing = false;

	FUNC13(&priv->lock, flags);

	return 0;

exit_close_candev:
	FUNC0(dev);
exit_free_txdlc:
	FUNC5(priv->txdlc);
exit_free_echo_skb:
	FUNC5(priv->echo_skb);
exit_free_dma_buffers:
	FUNC2(dev);
	return err;
}