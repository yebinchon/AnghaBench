#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct cas_control {scalar_t__* tx_in_buf; scalar_t__* tx_buf; struct ca8210_priv* priv; } ;
struct ca8210_priv {int retries; int /*<<< orphan*/  spi_transfer_complete; TYPE_1__* spi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CA8210_SPI_BUF_SIZE ; 
 scalar_t__ SPI_IDLE ; 
 scalar_t__ SPI_NACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct cas_control*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct cas_control*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC10(void *context)
{
	struct cas_control *cas_ctl = context;
	struct ca8210_priv *priv = cas_ctl->priv;
	bool duplex_rx = false;
	int i;
	u8 retry_buffer[CA8210_SPI_BUF_SIZE];

	if (
		cas_ctl->tx_in_buf[0] == SPI_NACK ||
		(cas_ctl->tx_in_buf[0] == SPI_IDLE &&
		cas_ctl->tx_in_buf[1] == SPI_NACK)
	) {
		/* ca8210 is busy */
		FUNC6(&priv->spi->dev, "ca8210 was busy during attempted write\n");
		if (cas_ctl->tx_buf[0] == SPI_IDLE) {
			FUNC7(
				&priv->spi->dev,
				"IRQ servicing NACKd, dropping transfer\n"
			);
			FUNC8(cas_ctl);
			return;
		}
		if (priv->retries > 3) {
			FUNC5(&priv->spi->dev, "too many retries!\n");
			FUNC8(cas_ctl);
			FUNC0(priv->spi);
			return;
		}
		FUNC9(retry_buffer, cas_ctl->tx_buf, CA8210_SPI_BUF_SIZE);
		FUNC8(cas_ctl);
		FUNC2(
			priv->spi,
			retry_buffer,
			CA8210_SPI_BUF_SIZE
		);
		priv->retries++;
		FUNC6(&priv->spi->dev, "retried spi write\n");
		return;
	} else if (
			cas_ctl->tx_in_buf[0] != SPI_IDLE &&
			cas_ctl->tx_in_buf[0] != SPI_NACK
		) {
		duplex_rx = true;
	}

	if (duplex_rx) {
		FUNC4(&priv->spi->dev, "READ CMD DURING TX\n");
		for (i = 0; i < cas_ctl->tx_in_buf[1] + 2; i++)
			FUNC4(
				&priv->spi->dev,
				"%#03x\n",
				cas_ctl->tx_in_buf[i]
			);
		FUNC1(cas_ctl);
	}
	FUNC3(&priv->spi_transfer_complete);
	FUNC8(cas_ctl);
	priv->retries = 0;
}