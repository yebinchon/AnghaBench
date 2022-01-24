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
struct spi_transfer {void const* tx_buf; void* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;
struct sja1105_private {struct spi_device* spidev; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int SJA1105_SIZE_SPI_TRANSFER_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC4(const struct sja1105_private *priv,
				const void *tx, void *rx, int size)
{
	struct spi_device *spi = priv->spidev;
	struct spi_transfer transfer = {
		.tx_buf = tx,
		.rx_buf = rx,
		.len = size,
	};
	struct spi_message msg;
	int rc;

	if (size > SJA1105_SIZE_SPI_TRANSFER_MAX) {
		FUNC0(&spi->dev, "SPI message (%d) longer than max of %d\n",
			size, SJA1105_SIZE_SPI_TRANSFER_MAX);
		return -EMSGSIZE;
	}

	FUNC2(&msg);
	FUNC1(&transfer, &msg);

	rc = FUNC3(spi, &msg);
	if (rc < 0) {
		FUNC0(&spi->dev, "SPI transfer failed: %d\n", rc);
		return rc;
	}

	return rc;
}