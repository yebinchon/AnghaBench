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
struct tcan4x5x_priv {int /*<<< orphan*/  mcan_dev; int /*<<< orphan*/  power; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tcan4x5x_priv* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct tcan4x5x_priv *priv = FUNC1(spi);

	FUNC2(priv->power, 0);

	FUNC0(priv->mcan_dev);

	return 0;
}