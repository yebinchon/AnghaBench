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
struct spi_device {int dummy; } ;
struct p54s_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; int /*<<< orphan*/  firmware; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p54spi_gpio_irq ; 
 int /*<<< orphan*/  p54spi_gpio_power ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct p54s_priv* FUNC7 (struct spi_device*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct p54s_priv *priv = FUNC7(spi);

	FUNC5(priv->hw);

	FUNC0(FUNC2(p54spi_gpio_irq), spi);

	FUNC1(p54spi_gpio_power);
	FUNC1(p54spi_gpio_irq);
	FUNC6(priv->firmware);

	FUNC3(&priv->mutex);

	FUNC4(priv->hw);

	return 0;
}