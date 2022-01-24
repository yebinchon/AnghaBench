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
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct hi3110_priv {int /*<<< orphan*/  hi3110_lock; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  wq; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  tx_work; scalar_t__ tx_len; int /*<<< orphan*/ * tx_skb; scalar_t__ force_quit; struct spi_device* spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  DEVICE_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_HIGH ; 
 int WQ_FREEZABLE ; 
 int WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hi3110_priv*) ; 
 int /*<<< orphan*/  hi3110_can_ist ; 
 int FUNC7 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hi3110_restart_work_handler ; 
 int FUNC10 (struct spi_device*) ; 
 int FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  hi3110_tx_work_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct hi3110_priv* FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int FUNC16 (struct net_device*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct hi3110_priv*) ; 

__attribute__((used)) static int FUNC18(struct net_device *net)
{
	struct hi3110_priv *priv = FUNC14(net);
	struct spi_device *spi = priv->spi;
	unsigned long flags = IRQF_ONESHOT | IRQF_TRIGGER_HIGH;
	int ret;

	ret = FUNC16(net);
	if (ret)
		return ret;

	FUNC12(&priv->hi3110_lock);
	FUNC9(priv->transceiver, 1);

	priv->force_quit = 0;
	priv->tx_skb = NULL;
	priv->tx_len = 0;

	ret = FUNC17(spi->irq, NULL, hi3110_can_ist,
				   flags, DEVICE_NAME, priv);
	if (ret) {
		FUNC5(&spi->dev, "failed to acquire irq %d\n", spi->irq);
		goto out_close;
	}

	priv->wq = FUNC1("hi3110_wq", WQ_FREEZABLE | WQ_MEM_RECLAIM,
				   0);
	if (!priv->wq) {
		ret = -ENOMEM;
		goto out_free_irq;
	}
	FUNC0(&priv->tx_work, hi3110_tx_work_handler);
	FUNC0(&priv->restart_work, hi3110_restart_work_handler);

	ret = FUNC7(spi);
	if (ret)
		goto out_free_wq;

	ret = FUNC11(net);
	if (ret)
		goto out_free_wq;

	ret = FUNC10(spi);
	if (ret)
		goto out_free_wq;

	FUNC2(net, CAN_LED_EVENT_OPEN);
	FUNC15(net);
	FUNC13(&priv->hi3110_lock);

	return 0;

 out_free_wq:
	FUNC4(priv->wq);
 out_free_irq:
	FUNC6(spi->irq, priv);
	FUNC8(spi);
 out_close:
	FUNC9(priv->transceiver, 0);
	FUNC3(net);
	FUNC13(&priv->hi3110_lock);
	return ret;
}