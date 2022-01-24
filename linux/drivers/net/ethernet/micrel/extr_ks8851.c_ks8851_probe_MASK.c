#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {int bits_per_word; TYPE_3__ dev; int /*<<< orphan*/  irq; } ;
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  if_port; int /*<<< orphan*/ * ethtool_ops; } ;
struct TYPE_9__ {int phy_id; int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  mdio_write; int /*<<< orphan*/  mdio_read; struct net_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  register_write; int /*<<< orphan*/  register_read; int /*<<< orphan*/  width; struct ks8851_net* data; } ;
struct ks8851_net {int tx_space; int gpio; int rc_ccr; void* vdd_io; void* vdd_reg; struct net_device* netdev; int /*<<< orphan*/  txq; int /*<<< orphan*/  msg_enable; TYPE_2__ mii; TYPE_1__ eeprom; int /*<<< orphan*/  spi_msg2; int /*<<< orphan*/ * spi_xfer2; int /*<<< orphan*/  spi_msg1; int /*<<< orphan*/  spi_xfer1; int /*<<< orphan*/  rxctrl_work; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  statelock; int /*<<< orphan*/  lock; struct spi_device* spidev; } ;

/* Variables and functions */
 int CCR_EEPROM ; 
 unsigned int CIDER_ID ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int CIDER_REV_MASK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  GRR_GSR ; 
 int /*<<< orphan*/  IF_PORT_100BASET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  KS_CCR ; 
 int /*<<< orphan*/  KS_CIDER ; 
 int NETIF_MSG_DRV ; 
 int NETIF_MSG_LINK ; 
 int NETIF_MSG_PROBE ; 
 int /*<<< orphan*/  PCI_EEPROM_WIDTH_93C46 ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,TYPE_3__*) ; 
 struct net_device* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,char*) ; 
 void* FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  ks8851_eeprom_regread ; 
 int /*<<< orphan*/  ks8851_eeprom_regwrite ; 
 int /*<<< orphan*/  ks8851_ethtool_ops ; 
 int /*<<< orphan*/  FUNC13 (struct ks8851_net*) ; 
 int /*<<< orphan*/  ks8851_netdev_ops ; 
 int /*<<< orphan*/  ks8851_phy_read ; 
 int /*<<< orphan*/  ks8851_phy_write ; 
 void* FUNC14 (struct ks8851_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ks8851_net*) ; 
 int /*<<< orphan*/  ks8851_rxctrl_work ; 
 int /*<<< orphan*/  FUNC16 (struct ks8851_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ks8851_tx_work ; 
 int /*<<< orphan*/  msg_enable ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct ks8851_net* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 int FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct spi_device*,struct ks8851_net*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int,int) ; 

__attribute__((used)) static int FUNC32(struct spi_device *spi)
{
	struct net_device *ndev;
	struct ks8851_net *ks;
	int ret;
	unsigned cider;
	int gpio;

	ndev = FUNC5(sizeof(struct ks8851_net));
	if (!ndev)
		return -ENOMEM;

	spi->bits_per_word = 8;

	ks = FUNC19(ndev);

	ks->netdev = ndev;
	ks->spidev = spi;
	ks->tx_space = 6144;

	gpio = FUNC22(spi->dev.of_node, "reset-gpios",
				       0, NULL);
	if (gpio == -EPROBE_DEFER) {
		ret = gpio;
		goto err_gpio;
	}

	ks->gpio = gpio;
	if (FUNC11(gpio)) {
		ret = FUNC8(&spi->dev, gpio,
					    GPIOF_OUT_INIT_LOW, "ks8851_rst_n");
		if (ret) {
			FUNC6(&spi->dev, "reset gpio request failed\n");
			goto err_gpio;
		}
	}

	ks->vdd_io = FUNC9(&spi->dev, "vdd-io");
	if (FUNC2(ks->vdd_io)) {
		ret = FUNC3(ks->vdd_io);
		goto err_reg_io;
	}

	ret = FUNC25(ks->vdd_io);
	if (ret) {
		FUNC6(&spi->dev, "regulator vdd_io enable fail: %d\n",
			ret);
		goto err_reg_io;
	}

	ks->vdd_reg = FUNC9(&spi->dev, "vdd");
	if (FUNC2(ks->vdd_reg)) {
		ret = FUNC3(ks->vdd_reg);
		goto err_reg;
	}

	ret = FUNC25(ks->vdd_reg);
	if (ret) {
		FUNC6(&spi->dev, "regulator vdd enable fail: %d\n",
			ret);
		goto err_reg;
	}

	if (FUNC11(gpio)) {
		FUNC31(10000, 11000);
		FUNC12(gpio, 1);
	}

	FUNC17(&ks->lock);
	FUNC30(&ks->statelock);

	FUNC1(&ks->tx_work, ks8851_tx_work);
	FUNC1(&ks->rxctrl_work, ks8851_rxctrl_work);

	/* initialise pre-made spi transfer messages */

	FUNC28(&ks->spi_msg1);
	FUNC27(&ks->spi_xfer1, &ks->spi_msg1);

	FUNC28(&ks->spi_msg2);
	FUNC27(&ks->spi_xfer2[0], &ks->spi_msg2);
	FUNC27(&ks->spi_xfer2[1], &ks->spi_msg2);

	/* setup EEPROM state */

	ks->eeprom.data = ks;
	ks->eeprom.width = PCI_EEPROM_WIDTH_93C46;
	ks->eeprom.register_read = ks8851_eeprom_regread;
	ks->eeprom.register_write = ks8851_eeprom_regwrite;

	/* setup mii state */
	ks->mii.dev		= ndev;
	ks->mii.phy_id		= 1,
	ks->mii.phy_id_mask	= 1;
	ks->mii.reg_num_mask	= 0xf;
	ks->mii.mdio_read	= ks8851_phy_read;
	ks->mii.mdio_write	= ks8851_phy_write;

	FUNC7(&spi->dev, "message enable is %d\n", msg_enable);

	/* set the default message enable */
	ks->msg_enable = FUNC21(msg_enable, (NETIF_MSG_DRV |
						     NETIF_MSG_PROBE |
						     NETIF_MSG_LINK));

	FUNC26(&ks->txq);

	ndev->ethtool_ops = &ks8851_ethtool_ops;
	FUNC4(ndev, &spi->dev);

	FUNC29(spi, ks);

	FUNC20(ks->netdev);
	ndev->if_port = IF_PORT_100BASET;
	ndev->netdev_ops = &ks8851_netdev_ops;
	ndev->irq = spi->irq;

	/* issue a global soft reset to reset the device. */
	FUNC16(ks, GRR_GSR);

	/* simple check for a valid chip being connected to the bus */
	cider = FUNC14(ks, KS_CIDER);
	if ((cider & ~CIDER_REV_MASK) != CIDER_ID) {
		FUNC6(&spi->dev, "failed to read device ID\n");
		ret = -ENODEV;
		goto err_id;
	}

	/* cache the contents of the CCR register for EEPROM, etc. */
	ks->rc_ccr = FUNC14(ks, KS_CCR);

	FUNC15(ks);
	FUNC13(ks);

	ret = FUNC23(ndev);
	if (ret) {
		FUNC6(&spi->dev, "failed to register network device\n");
		goto err_netdev;
	}

	FUNC18(ndev, "revision %d, MAC %pM, IRQ %d, %s EEPROM\n",
		    FUNC0(cider), ndev->dev_addr, ndev->irq,
		    ks->rc_ccr & CCR_EEPROM ? "has" : "no");

	return 0;

err_netdev:
err_id:
	if (FUNC11(gpio))
		FUNC12(gpio, 0);
	FUNC24(ks->vdd_reg);
err_reg:
	FUNC24(ks->vdd_io);
err_reg_io:
err_gpio:
	FUNC10(ndev);
	return ret;
}