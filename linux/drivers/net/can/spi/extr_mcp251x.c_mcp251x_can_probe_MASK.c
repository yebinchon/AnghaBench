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
struct spi_device {int bits_per_word; int max_speed_hz; int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_4__ {int freq; } ;
struct TYPE_5__ {int ctrlmode_supported; TYPE_1__ clock; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/ * bittiming_const; } ;
struct mcp251x_priv {int model; struct clk* power; void* spi_rx_buf; void* spi_tx_buf; int /*<<< orphan*/  mcp_lock; struct spi_device* spi; struct clk* transceiver; struct clk* clk; struct net_device* net; TYPE_2__ can; } ;
struct mcp251x_platform_data {int oscillator_frequency; } ;
struct clk {int dummy; } ;
typedef  enum mcp251x_model { ____Placeholder_mcp251x_model } mcp251x_model ;
struct TYPE_6__ {int driver_data; } ;

/* Variables and functions */
 int CAN_CTRLMODE_3_SAMPLES ; 
 int CAN_CTRLMODE_LISTENONLY ; 
 int CAN_CTRLMODE_LOOPBACK ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPI_TRANSFER_BUF_LEN ; 
 int /*<<< orphan*/  TX_ECHO_SKB_MAX ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int FUNC5 (struct clk*) ; 
 int FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 struct mcp251x_platform_data* FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 struct clk* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  mcp251x_bittiming_const ; 
 int /*<<< orphan*/  mcp251x_do_set_mode ; 
 int FUNC15 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_device*) ; 
 scalar_t__ FUNC17 (struct spi_device*) ; 
 int /*<<< orphan*/  mcp251x_netdev_ops ; 
 int FUNC18 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,char*,int) ; 
 struct mcp251x_priv* FUNC21 (struct net_device*) ; 
 int FUNC22 (struct net_device*) ; 
 TYPE_3__* FUNC23 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct spi_device*,struct mcp251x_priv*) ; 
 int FUNC25 (struct spi_device*) ; 

__attribute__((used)) static int FUNC26(struct spi_device *spi)
{
	const void *match = FUNC9(&spi->dev);
	struct mcp251x_platform_data *pdata = FUNC8(&spi->dev);
	struct net_device *net;
	struct mcp251x_priv *priv;
	struct clk *clk;
	int freq, ret;

	clk = FUNC11(&spi->dev, NULL);
	if (FUNC0(clk))
		return FUNC1(clk);

	freq = FUNC5(clk);
	if (freq == 0 && pdata)
		freq = pdata->oscillator_frequency;

	/* Sanity check */
	if (freq < 1000000 || freq > 25000000)
		return -ERANGE;

	/* Allocate can/net device */
	net = FUNC3(sizeof(struct mcp251x_priv), TX_ECHO_SKB_MAX);
	if (!net)
		return -ENOMEM;

	ret = FUNC6(clk);
	if (ret)
		goto out_free;

	net->netdev_ops = &mcp251x_netdev_ops;
	net->flags |= IFF_ECHO;

	priv = FUNC21(net);
	priv->can.bittiming_const = &mcp251x_bittiming_const;
	priv->can.do_set_mode = mcp251x_do_set_mode;
	priv->can.clock.freq = freq / 2;
	priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES |
		CAN_CTRLMODE_LOOPBACK | CAN_CTRLMODE_LISTENONLY;
	if (match)
		priv->model = (enum mcp251x_model)match;
	else
		priv->model = FUNC23(spi)->driver_data;
	priv->net = net;
	priv->clk = clk;

	FUNC24(spi, priv);

	/* Configure the SPI bus */
	spi->bits_per_word = 8;
	if (FUNC17(spi))
		spi->max_speed_hz = spi->max_speed_hz ? : 5 * 1000 * 1000;
	else
		spi->max_speed_hz = spi->max_speed_hz ? : 10 * 1000 * 1000;
	ret = FUNC25(spi);
	if (ret)
		goto out_clk;

	priv->power = FUNC13(&spi->dev, "vdd");
	priv->transceiver = FUNC13(&spi->dev, "xceiver");
	if ((FUNC1(priv->power) == -EPROBE_DEFER) ||
	    (FUNC1(priv->transceiver) == -EPROBE_DEFER)) {
		ret = -EPROBE_DEFER;
		goto out_clk;
	}

	ret = FUNC18(priv->power, 1);
	if (ret)
		goto out_clk;

	priv->spi = spi;
	FUNC19(&priv->mcp_lock);

	priv->spi_tx_buf = FUNC12(&spi->dev, SPI_TRANSFER_BUF_LEN,
					GFP_KERNEL);
	if (!priv->spi_tx_buf) {
		ret = -ENOMEM;
		goto error_probe;
	}

	priv->spi_rx_buf = FUNC12(&spi->dev, SPI_TRANSFER_BUF_LEN,
					GFP_KERNEL);
	if (!priv->spi_rx_buf) {
		ret = -ENOMEM;
		goto error_probe;
	}

	FUNC2(net, &spi->dev);

	/* Here is OK to not lock the MCP, no one knows about it yet */
	ret = FUNC15(spi);
	if (ret) {
		if (ret == -ENODEV)
			FUNC7(&spi->dev, "Cannot initialize MCP%x. Wrong wiring?\n",
				priv->model);
		goto error_probe;
	}

	FUNC16(spi);

	ret = FUNC22(net);
	if (ret)
		goto error_probe;

	FUNC10(net);

	FUNC20(net, "MCP%x successfully initialized.\n", priv->model);
	return 0;

error_probe:
	FUNC18(priv->power, 0);

out_clk:
	FUNC4(clk);

out_free:
	FUNC14(net);

	FUNC7(&spi->dev, "Probe failed, err=%d\n", -ret);
	return ret;
}