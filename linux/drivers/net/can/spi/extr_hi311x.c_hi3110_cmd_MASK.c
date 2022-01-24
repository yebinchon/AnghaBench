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
typedef  int /*<<< orphan*/  u8 ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct hi3110_priv {int /*<<< orphan*/ * spi_tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,int) ; 
 struct hi3110_priv* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static u8 FUNC3(struct spi_device *spi, u8 command)
{
	struct hi3110_priv *priv = FUNC2(spi);

	priv->spi_tx_buf[0] = command;
	FUNC0(&spi->dev, "hi3110_cmd: %02X\n", command);

	return FUNC1(spi, 1);
}