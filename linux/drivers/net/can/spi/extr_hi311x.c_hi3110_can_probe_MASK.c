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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int freq; } ;
struct TYPE_5__ {int ctrlmode_supported; TYPE_1__ clock; int /*<<< orphan*/  do_get_berr_counter; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/ * bittiming_const; } ;
struct hi3110_priv {int model; struct clk* power; void* spi_rx_buf; void* spi_tx_buf; int /*<<< orphan*/  hi3110_lock; struct spi_device* spi; struct clk* transceiver; struct clk* clk; struct net_device* net; TYPE_2__ can; } ;
struct clk {int dummy; } ;
typedef  enum hi3110_model { ____Placeholder_hi3110_model } hi3110_model ;
struct TYPE_6__ {int driver_data; } ;

/* Variables and functions */
 int CAN_CTRLMODE_3_SAMPLES ; 
 int CAN_CTRLMODE_BERR_REPORTING ; 
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_CTRLMODE_LOOPBACK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HI3110_RX_BUF_LEN ; 
 int /*<<< orphan*/  HI3110_TX_ECHO_SKB_MAX ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*) ; 
 int FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct clk* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  hi3110_bittiming_const ; 
 int /*<<< orphan*/  hi3110_do_set_mode ; 
 int /*<<< orphan*/  hi3110_get_berr_counter ; 
 int FUNC13 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*) ; 
 int /*<<< orphan*/  hi3110_netdev_ops ; 
 int /*<<< orphan*/  hi3110_of_match ; 
 int FUNC15 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,char*,int) ; 
 struct hi3110_priv* FUNC18 (struct net_device*) ; 
 struct of_device_id* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct net_device*) ; 
 TYPE_3__* FUNC21 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct spi_device*,struct hi3110_priv*) ; 
 int FUNC23 (struct spi_device*) ; 

__attribute__((used)) static int FUNC24(struct spi_device *spi)
{
	const struct of_device_id *of_id = FUNC19(hi3110_of_match,
							   &spi->dev);
	struct net_device *net;
	struct hi3110_priv *priv;
	struct clk *clk;
	int freq, ret;

	clk = FUNC9(&spi->dev, NULL);
	if (FUNC0(clk)) {
		FUNC7(&spi->dev, "no CAN clock source defined\n");
		return FUNC1(clk);
	}
	freq = FUNC5(clk);

	/* Sanity check */
	if (freq > 40000000)
		return -ERANGE;

	/* Allocate can/net device */
	net = FUNC3(sizeof(struct hi3110_priv), HI3110_TX_ECHO_SKB_MAX);
	if (!net)
		return -ENOMEM;

	if (!FUNC0(clk)) {
		ret = FUNC6(clk);
		if (ret)
			goto out_free;
	}

	net->netdev_ops = &hi3110_netdev_ops;
	net->flags |= IFF_ECHO;

	priv = FUNC18(net);
	priv->can.bittiming_const = &hi3110_bittiming_const;
	priv->can.do_set_mode = hi3110_do_set_mode;
	priv->can.do_get_berr_counter = hi3110_get_berr_counter;
	priv->can.clock.freq = freq / 2;
	priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES |
		CAN_CTRLMODE_LOOPBACK |
		CAN_CTRLMODE_LISTENONLY |
		CAN_CTRLMODE_BERR_REPORTING;

	if (of_id)
		priv->model = (enum hi3110_model)of_id->data;
	else
		priv->model = FUNC21(spi)->driver_data;
	priv->net = net;
	priv->clk = clk;

	FUNC22(spi, priv);

	/* Configure the SPI bus */
	spi->bits_per_word = 8;
	ret = FUNC23(spi);
	if (ret)
		goto out_clk;

	priv->power = FUNC11(&spi->dev, "vdd");
	priv->transceiver = FUNC11(&spi->dev, "xceiver");
	if ((FUNC1(priv->power) == -EPROBE_DEFER) ||
	    (FUNC1(priv->transceiver) == -EPROBE_DEFER)) {
		ret = -EPROBE_DEFER;
		goto out_clk;
	}

	ret = FUNC15(priv->power, 1);
	if (ret)
		goto out_clk;

	priv->spi = spi;
	FUNC16(&priv->hi3110_lock);

	priv->spi_tx_buf = FUNC10(&spi->dev, HI3110_RX_BUF_LEN,
					GFP_KERNEL);
	if (!priv->spi_tx_buf) {
		ret = -ENOMEM;
		goto error_probe;
	}
	priv->spi_rx_buf = FUNC10(&spi->dev, HI3110_RX_BUF_LEN,
					GFP_KERNEL);

	if (!priv->spi_rx_buf) {
		ret = -ENOMEM;
		goto error_probe;
	}

	FUNC2(net, &spi->dev);

	ret = FUNC13(spi);
	if (ret) {
		if (ret == -ENODEV)
			FUNC7(&spi->dev, "Cannot initialize %x. Wrong wiring?\n",
				priv->model);
		goto error_probe;
	}
	FUNC14(spi);

	ret = FUNC20(net);
	if (ret)
		goto error_probe;

	FUNC8(net);
	FUNC17(net, "%x successfully initialized.\n", priv->model);

	return 0;

 error_probe:
	FUNC15(priv->power, 0);

 out_clk:
	if (!FUNC0(clk))
		FUNC4(clk);

 out_free:
	FUNC12(net);

	FUNC7(&spi->dev, "Probe failed, err=%d\n", -ret);
	return ret;
}