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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct cc2520_private {int amplified; int /*<<< orphan*/  fifop_irqwork; int /*<<< orphan*/  buffer_mutex; int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  lock; void* buf; struct spi_device* spi; } ;
struct cc2520_platform_data {int /*<<< orphan*/  sfd; int /*<<< orphan*/  fifop; int /*<<< orphan*/  reset; int /*<<< orphan*/  vreg; int /*<<< orphan*/  cca; int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 int /*<<< orphan*/  GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 int SPI_COMMAND_BUFFER ; 
 int /*<<< orphan*/  cc2520_fifop_irqwork ; 
 int /*<<< orphan*/  cc2520_fifop_isr ; 
 int FUNC1 (struct spi_device*,struct cc2520_platform_data*) ; 
 int FUNC2 (struct cc2520_private*) ; 
 int FUNC3 (struct cc2520_private*) ; 
 int /*<<< orphan*/  cc2520_sfd_isr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cc2520_private*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct spi_device*,struct cc2520_private*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 

__attribute__((used)) static int FUNC19(struct spi_device *spi)
{
	struct cc2520_private *priv;
	struct cc2520_platform_data pdata;
	int ret;

	priv = FUNC7(&spi->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC16(spi, priv);

	ret = FUNC1(spi, &pdata);
	if (ret < 0) {
		FUNC4(&spi->dev, "no platform data\n");
		return -EINVAL;
	}

	priv->spi = spi;

	priv->buf = FUNC7(&spi->dev,
				 SPI_COMMAND_BUFFER, GFP_KERNEL);
	if (!priv->buf)
		return -ENOMEM;

	FUNC15(&priv->buffer_mutex);
	FUNC0(&priv->fifop_irqwork, cc2520_fifop_irqwork);
	FUNC17(&priv->lock);
	FUNC13(&priv->tx_complete);

	/* Assumption that CC2591 is not connected */
	priv->amplified = false;

	/* Request all the gpio's */
	if (!FUNC10(pdata.fifo)) {
		FUNC4(&spi->dev, "fifo gpio is not valid\n");
		ret = -EINVAL;
		goto err_hw_init;
	}

	ret = FUNC6(&spi->dev, pdata.fifo,
				    GPIOF_IN, "fifo");
	if (ret)
		goto err_hw_init;

	if (!FUNC10(pdata.cca)) {
		FUNC4(&spi->dev, "cca gpio is not valid\n");
		ret = -EINVAL;
		goto err_hw_init;
	}

	ret = FUNC6(&spi->dev, pdata.cca,
				    GPIOF_IN, "cca");
	if (ret)
		goto err_hw_init;

	if (!FUNC10(pdata.fifop)) {
		FUNC4(&spi->dev, "fifop gpio is not valid\n");
		ret = -EINVAL;
		goto err_hw_init;
	}

	ret = FUNC6(&spi->dev, pdata.fifop,
				    GPIOF_IN, "fifop");
	if (ret)
		goto err_hw_init;

	if (!FUNC10(pdata.sfd)) {
		FUNC4(&spi->dev, "sfd gpio is not valid\n");
		ret = -EINVAL;
		goto err_hw_init;
	}

	ret = FUNC6(&spi->dev, pdata.sfd,
				    GPIOF_IN, "sfd");
	if (ret)
		goto err_hw_init;

	if (!FUNC10(pdata.reset)) {
		FUNC4(&spi->dev, "reset gpio is not valid\n");
		ret = -EINVAL;
		goto err_hw_init;
	}

	ret = FUNC6(&spi->dev, pdata.reset,
				    GPIOF_OUT_INIT_LOW, "reset");
	if (ret)
		goto err_hw_init;

	if (!FUNC10(pdata.vreg)) {
		FUNC4(&spi->dev, "vreg gpio is not valid\n");
		ret = -EINVAL;
		goto err_hw_init;
	}

	ret = FUNC6(&spi->dev, pdata.vreg,
				    GPIOF_OUT_INIT_LOW, "vreg");
	if (ret)
		goto err_hw_init;

	FUNC11(pdata.vreg, HIGH);
	FUNC18(100, 150);

	FUNC11(pdata.reset, HIGH);
	FUNC18(200, 250);

	ret = FUNC2(priv);
	if (ret)
		goto err_hw_init;

	/* Set up fifop interrupt */
	ret = FUNC8(&spi->dev,
			       FUNC12(pdata.fifop),
			       cc2520_fifop_isr,
			       IRQF_TRIGGER_RISING,
			       FUNC5(&spi->dev),
			       priv);
	if (ret) {
		FUNC4(&spi->dev, "could not get fifop irq\n");
		goto err_hw_init;
	}

	/* Set up sfd interrupt */
	ret = FUNC8(&spi->dev,
			       FUNC12(pdata.sfd),
			       cc2520_sfd_isr,
			       IRQF_TRIGGER_FALLING,
			       FUNC5(&spi->dev),
			       priv);
	if (ret) {
		FUNC4(&spi->dev, "could not get sfd irq\n");
		goto err_hw_init;
	}

	ret = FUNC3(priv);
	if (ret)
		goto err_hw_init;

	return 0;

err_hw_init:
	FUNC14(&priv->buffer_mutex);
	FUNC9(&priv->fifop_irqwork);
	return ret;
}