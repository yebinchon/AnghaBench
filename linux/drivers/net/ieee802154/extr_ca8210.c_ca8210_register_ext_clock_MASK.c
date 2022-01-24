#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct ca8210_platform_data* platform_data; struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct ca8210_priv {int /*<<< orphan*/  clk; } ;
struct ca8210_platform_data {int /*<<< orphan*/  extclockfreq; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_src_simple_get ; 
 struct ca8210_priv* FUNC7 (struct spi_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct device_node *np = spi->dev.of_node;
	struct ca8210_priv *priv = FUNC7(spi);
	struct ca8210_platform_data *pdata = spi->dev.platform_data;
	int ret = 0;

	if (!np)
		return -EFAULT;

	priv->clk = FUNC2(
		&spi->dev,
		np->name,
		NULL,
		0,
		pdata->extclockfreq
	);

	if (FUNC0(priv->clk)) {
		FUNC4(&spi->dev, "Failed to register external clk\n");
		return FUNC1(priv->clk);
	}
	ret = FUNC6(np, of_clk_src_simple_get, priv->clk);
	if (ret) {
		FUNC3(priv->clk);
		FUNC4(
			&spi->dev,
			"Failed to register external clock as clock provider\n"
		);
	} else {
		FUNC5(&spi->dev, "External clock set as clock provider\n");
	}

	return ret;
}