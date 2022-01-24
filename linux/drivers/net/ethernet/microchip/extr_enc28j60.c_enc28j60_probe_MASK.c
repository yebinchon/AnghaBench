#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  irq; int /*<<< orphan*/  if_port; int /*<<< orphan*/  dev_addr; } ;
struct enc28j60_net {int /*<<< orphan*/  restart_work; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  setrx_work; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_enable; struct spi_device* spi; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  macaddr ;
struct TYPE_3__ {int /*<<< orphan*/  msg_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  DRV_VERSION ; 
 int EIO ; 
 int /*<<< orphan*/  ENC28J60_MSG_DEFAULT ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  IF_PORT_10BASET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 struct net_device* FUNC2 (int) ; 
 TYPE_1__ debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  enc28j60_ethtool_ops ; 
 int /*<<< orphan*/  enc28j60_irq ; 
 int /*<<< orphan*/  enc28j60_irq_work_handler ; 
 int /*<<< orphan*/  FUNC7 (struct enc28j60_net*,int) ; 
 int /*<<< orphan*/  enc28j60_netdev_ops ; 
 int /*<<< orphan*/  enc28j60_restart_work_handler ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  enc28j60_setrx_work_handler ; 
 int /*<<< orphan*/  enc28j60_tx_work_handler ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct enc28j60_net* FUNC14 (struct net_device*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct enc28j60_net*) ; 
 int FUNC18 (struct net_device*) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct enc28j60_net*) ; 
 int /*<<< orphan*/  FUNC20 (struct spi_device*,struct enc28j60_net*) ; 

__attribute__((used)) static int FUNC21(struct spi_device *spi)
{
	unsigned char macaddr[ETH_ALEN];
	struct net_device *dev;
	struct enc28j60_net *priv;
	int ret = 0;

	if (FUNC15(&debug))
		FUNC4(&spi->dev, "Ethernet driver %s loaded\n", DRV_VERSION);

	dev = FUNC2(sizeof(struct enc28j60_net));
	if (!dev) {
		ret = -ENOMEM;
		goto error_alloc;
	}
	priv = FUNC14(dev);

	priv->netdev = dev;	/* priv to netdev reference */
	priv->spi = spi;	/* priv to spi reference */
	priv->msg_enable = FUNC16(debug.msg_enable, ENC28J60_MSG_DEFAULT);
	FUNC13(&priv->lock);
	FUNC0(&priv->tx_work, enc28j60_tx_work_handler);
	FUNC0(&priv->setrx_work, enc28j60_setrx_work_handler);
	FUNC0(&priv->irq_work, enc28j60_irq_work_handler);
	FUNC0(&priv->restart_work, enc28j60_restart_work_handler);
	FUNC20(spi, priv);	/* spi to priv reference */
	FUNC1(dev, &spi->dev);

	if (!FUNC6(dev)) {
		if (FUNC17(priv))
			FUNC4(&spi->dev, "chip not found\n");
		ret = -EIO;
		goto error_irq;
	}

	if (FUNC5(&spi->dev, macaddr, sizeof(macaddr)))
		FUNC10(dev->dev_addr, macaddr);
	else
		FUNC9(dev);
	FUNC8(dev);

	/* Board setup must set the relevant edge trigger type;
	 * level triggers won't currently work.
	 */
	ret = FUNC19(spi->irq, enc28j60_irq, 0, DRV_NAME, priv);
	if (ret < 0) {
		if (FUNC17(priv))
			FUNC3(&spi->dev, "request irq %d failed (ret = %d)\n",
				spi->irq, ret);
		goto error_irq;
	}

	dev->if_port = IF_PORT_10BASET;
	dev->irq = spi->irq;
	dev->netdev_ops = &enc28j60_netdev_ops;
	dev->watchdog_timeo = TX_TIMEOUT;
	dev->ethtool_ops = &enc28j60_ethtool_ops;

	FUNC7(priv, true);

	ret = FUNC18(dev);
	if (ret) {
		if (FUNC17(priv))
			FUNC3(&spi->dev, "register netdev failed (ret = %d)\n",
				ret);
		goto error_register;
	}

	return 0;

error_register:
	FUNC11(spi->irq, priv);
error_irq:
	FUNC12(dev);
error_alloc:
	return ret;
}