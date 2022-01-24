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
struct hi3110_priv {scalar_t__ spi_rx_buf; int /*<<< orphan*/ * spi_tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  HI3110_READ_FIFO_WOTIME ; 
 scalar_t__ HI3110_RX_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct hi3110_priv* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, u8 *buf)
{
	struct hi3110_priv *priv = FUNC2(spi);

	priv->spi_tx_buf[0] = HI3110_READ_FIFO_WOTIME;
	FUNC0(spi, HI3110_RX_BUF_LEN);
	FUNC1(buf, priv->spi_rx_buf + 1, HI3110_RX_BUF_LEN - 1);
}