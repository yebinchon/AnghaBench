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
struct spi_transfer {int len; int /*<<< orphan*/  cs_change; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct mcp251x_priv {int /*<<< orphan*/  spi_rx_buf; int /*<<< orphan*/  spi_tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct mcp251x_priv* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int FUNC4 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC5(struct spi_device *spi, int len)
{
	struct mcp251x_priv *priv = FUNC1(spi);
	struct spi_transfer t = {
		.tx_buf = priv->spi_tx_buf,
		.rx_buf = priv->spi_rx_buf,
		.len = len,
		.cs_change = 0,
	};
	struct spi_message m;
	int ret;

	FUNC3(&m);
	FUNC2(&t, &m);

	ret = FUNC4(spi, &m);
	if (ret)
		FUNC0(&spi->dev, "spi transfer failed: ret = %d\n", ret);
	return ret;
}