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
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct mcp251x_priv {int /*<<< orphan*/  spi_rx_buf; int /*<<< orphan*/ * spi_tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t RXBCTRL_OFF ; 
 int RXBDAT_OFF ; 
 int RXBDLC_LEN_MASK ; 
 size_t RXBDLC_OFF ; 
 int /*<<< orphan*/  SPI_TRANSFER_BUF_LEN ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct spi_device*) ; 
 int FUNC4 (struct spi_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mcp251x_priv* FUNC7 (struct spi_device*) ; 

__attribute__((used)) static void FUNC8(struct spi_device *spi, u8 *buf,
				int buf_idx)
{
	struct mcp251x_priv *priv = FUNC7(spi);

	if (FUNC3(spi)) {
		int i, len;

		for (i = 1; i < RXBDAT_OFF; i++)
			buf[i] = FUNC4(spi, FUNC1(buf_idx) + i);

		len = FUNC2(buf[RXBDLC_OFF] & RXBDLC_LEN_MASK);
		for (; i < (RXBDAT_OFF + len); i++)
			buf[i] = FUNC4(spi, FUNC1(buf_idx) + i);
	} else {
		priv->spi_tx_buf[RXBCTRL_OFF] = FUNC0(buf_idx);
		FUNC5(spi, SPI_TRANSFER_BUF_LEN);
		FUNC6(buf, priv->spi_rx_buf, SPI_TRANSFER_BUF_LEN);
	}
}