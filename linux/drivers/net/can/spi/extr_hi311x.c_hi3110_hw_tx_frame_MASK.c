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
struct hi3110_priv {int /*<<< orphan*/ * spi_tx_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  HI3110_WRITE_FIFO ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct hi3110_priv* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static void FUNC3(struct spi_device *spi, u8 *buf, int len)
{
	struct hi3110_priv *priv = FUNC2(spi);

	priv->spi_tx_buf[0] = HI3110_WRITE_FIFO;
	FUNC1(priv->spi_tx_buf + 1, buf, len);
	FUNC0(spi, len + 1);
}