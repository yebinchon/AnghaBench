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
struct ks8851_net {int /*<<< orphan*/  netdev; int /*<<< orphan*/  vdd_io; int /*<<< orphan*/  vdd_reg; int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ks8851_net*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ks8851_net* FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct ks8851_net *priv = FUNC6(spi);

	if (FUNC4(priv))
		FUNC0(&spi->dev, "remove\n");

	FUNC7(priv->netdev);
	if (FUNC2(priv->gpio))
		FUNC3(priv->gpio, 0);
	FUNC5(priv->vdd_reg);
	FUNC5(priv->vdd_io);
	FUNC1(priv->netdev);

	return 0;
}