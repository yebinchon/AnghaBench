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
struct spi_device {int dummy; } ;
struct mcp251x_priv {int /*<<< orphan*/  spi_tx_buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int TXBDAT_OFF ; 
 scalar_t__ FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct mcp251x_priv* FUNC5 (struct spi_device*) ; 

__attribute__((used)) static void FUNC6(struct spi_device *spi, u8 *buf,
				int len, int tx_buf_idx)
{
	struct mcp251x_priv *priv = FUNC5(spi);

	if (FUNC1(spi)) {
		int i;

		for (i = 1; i < TXBDAT_OFF + len; i++)
			FUNC3(spi, FUNC0(tx_buf_idx) + i,
					  buf[i]);
	} else {
		FUNC4(priv->spi_tx_buf, buf, TXBDAT_OFF + len);
		FUNC2(spi, TXBDAT_OFF + len);
	}
}