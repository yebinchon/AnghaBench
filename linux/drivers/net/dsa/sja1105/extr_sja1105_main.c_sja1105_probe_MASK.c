#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct spi_device {int bits_per_word; struct device dev; } ;
struct sja1105_tagger_data {int /*<<< orphan*/  meta_lock; int /*<<< orphan*/  rxtstamp_work; int /*<<< orphan*/  skb_rxtstamp_queue; } ;
struct sja1105_private {struct dsa_switch* ds; int /*<<< orphan*/  mgmt_lock; struct sja1105_port* ports; struct sja1105_tagger_data tagger_data; TYPE_2__* info; struct spi_device* spidev; int /*<<< orphan*/  reset_gpio; } ;
struct sja1105_port {struct sja1105_tagger_data* data; TYPE_1__* dp; } ;
struct dsa_switch {TYPE_1__* ports; struct sja1105_private* priv; int /*<<< orphan*/ * ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct sja1105_port* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SJA1105_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sja1105_private* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dsa_switch*) ; 
 struct dsa_switch* FUNC8 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (struct device*) ; 
 int FUNC11 (struct sja1105_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  sja1105_rxtstamp_work ; 
 int /*<<< orphan*/  sja1105_switch_ops ; 
 int /*<<< orphan*/  FUNC13 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct sja1105_private*) ; 
 int FUNC16 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct spi_device *spi)
{
	struct sja1105_tagger_data *tagger_data;
	struct device *dev = &spi->dev;
	struct sja1105_private *priv;
	struct dsa_switch *ds;
	int rc, i;

	if (!dev->of_node) {
		FUNC3(dev, "No DTS bindings for SJA1105 driver\n");
		return -EINVAL;
	}

	priv = FUNC6(dev, sizeof(struct sja1105_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* Configure the optional reset pin and bring up switch */
	priv->reset_gpio = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(priv->reset_gpio))
		FUNC2(dev, "reset-gpios not defined, ignoring\n");
	else
		FUNC12(priv->reset_gpio, 1, 1);

	/* Populate our driver private structure (priv) based on
	 * the device tree node that was probed (spi)
	 */
	priv->spidev = spi;
	FUNC15(spi, priv);

	/* Configure the SPI bus */
	spi->bits_per_word = 8;
	rc = FUNC16(spi);
	if (rc < 0) {
		FUNC3(dev, "Could not init SPI\n");
		return rc;
	}

	priv->info = FUNC10(dev);

	/* Detect hardware device */
	rc = FUNC11(priv);
	if (rc < 0) {
		FUNC3(dev, "Device ID check failed: %d\n", rc);
		return rc;
	}

	FUNC4(dev, "Probed switch chip: %s\n", priv->info->name);

	ds = FUNC8(dev, SJA1105_NUM_PORTS);
	if (!ds)
		return -ENOMEM;

	ds->ops = &sja1105_switch_ops;
	ds->priv = priv;
	priv->ds = ds;

	tagger_data = &priv->tagger_data;
	FUNC14(&tagger_data->skb_rxtstamp_queue);
	FUNC0(&tagger_data->rxtstamp_work, sja1105_rxtstamp_work);
	FUNC17(&tagger_data->meta_lock);

	/* Connections between dsa_port and sja1105_port */
	for (i = 0; i < SJA1105_NUM_PORTS; i++) {
		struct sja1105_port *sp = &priv->ports[i];

		ds->ports[i].priv = sp;
		sp->dp = &ds->ports[i];
		sp->data = tagger_data;
	}
	FUNC9(&priv->mgmt_lock);

	FUNC13(ds);

	return FUNC7(priv->ds);
}