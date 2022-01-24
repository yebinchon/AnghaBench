#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct spi_transfer {int /*<<< orphan*/  len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct cc2520_private {int /*<<< orphan*/  buffer_mutex; int /*<<< orphan*/ * buf; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC2520_CMD_SNOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static int
FUNC6(struct cc2520_private *priv, u8 *status)
{
	int ret;
	struct spi_message msg;
	struct spi_transfer xfer = {
		.len = 0,
		.tx_buf = priv->buf,
		.rx_buf = priv->buf,
	};

	FUNC4(&msg);
	FUNC3(&xfer, &msg);

	FUNC1(&priv->buffer_mutex);
	priv->buf[xfer.len++] = CC2520_CMD_SNOP;
	FUNC0(&priv->spi->dev,
		 "get status command buf[0] = %02x\n", priv->buf[0]);

	ret = FUNC5(priv->spi, &msg);
	if (!ret)
		*status = priv->buf[0];
	FUNC0(&priv->spi->dev,
		 "buf[0] = %02x\n", priv->buf[0]);
	FUNC2(&priv->buffer_mutex);

	return ret;
}