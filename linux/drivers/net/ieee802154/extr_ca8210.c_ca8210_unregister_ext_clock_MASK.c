#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct ca8210_priv {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 void FUNC2 (int /*<<< orphan*/ ) ; 
 struct ca8210_priv* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi)
{
	struct ca8210_priv *priv = FUNC3(spi);

	if (!priv->clk)
		return

	FUNC2(spi->dev.of_node);
	FUNC0(priv->clk);
	FUNC1(&spi->dev, "External clock unregistered\n");
}