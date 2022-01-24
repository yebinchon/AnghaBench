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
struct mcp251x_priv {int /*<<< orphan*/  mcp_lock; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  wq; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  tx_work; scalar_t__ tx_len; int /*<<< orphan*/ * tx_skb; scalar_t__ force_quit; struct spi_device* spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 int WQ_FREEZABLE ; 
 int WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mcp251x_priv*) ; 
 int /*<<< orphan*/  mcp251x_can_ist ; 
 int FUNC9 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mcp251x_restart_work_handler ; 
 int FUNC12 (struct spi_device*) ; 
 int FUNC13 (struct net_device*,struct spi_device*) ; 
 int /*<<< orphan*/  mcp251x_tx_work_handler ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct mcp251x_priv* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int FUNC18 (struct net_device*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct mcp251x_priv*) ; 

__attribute__((used)) static int FUNC20(struct net_device *net)
{
	struct mcp251x_priv *priv = FUNC16(net);
	struct spi_device *spi = priv->spi;
	unsigned long flags = 0;
	int ret;

	ret = FUNC18(net);
	if (ret) {
		FUNC5(&spi->dev, "unable to set initial baudrate!\n");
		return ret;
	}

	FUNC14(&priv->mcp_lock);
	FUNC11(priv->transceiver, 1);

	priv->force_quit = 0;
	priv->tx_skb = NULL;
	priv->tx_len = 0;

	if (!FUNC6(&spi->dev))
		flags = IRQF_TRIGGER_FALLING;

	ret = FUNC19(spi->irq, NULL, mcp251x_can_ist,
				   flags | IRQF_ONESHOT, FUNC7(&spi->dev),
				   priv);
	if (ret) {
		FUNC5(&spi->dev, "failed to acquire irq %d\n", spi->irq);
		goto out_close;
	}

	priv->wq = FUNC1("mcp251x_wq", WQ_FREEZABLE | WQ_MEM_RECLAIM,
				   0);
	if (!priv->wq) {
		ret = -ENOMEM;
		goto out_clean;
	}
	FUNC0(&priv->tx_work, mcp251x_tx_work_handler);
	FUNC0(&priv->restart_work, mcp251x_restart_work_handler);

	ret = FUNC9(spi);
	if (ret)
		goto out_free_wq;
	ret = FUNC13(net, spi);
	if (ret)
		goto out_free_wq;
	ret = FUNC12(spi);
	if (ret)
		goto out_free_wq;

	FUNC2(net, CAN_LED_EVENT_OPEN);

	FUNC17(net);
	FUNC15(&priv->mcp_lock);

	return 0;

out_free_wq:
	FUNC4(priv->wq);
out_clean:
	FUNC8(spi->irq, priv);
	FUNC10(spi);
out_close:
	FUNC11(priv->transceiver, 0);
	FUNC3(net);
	FUNC15(&priv->mcp_lock);
	return ret;
}