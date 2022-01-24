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
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int status; } ;
struct cc2520_private {int /*<<< orphan*/  buffer_mutex; TYPE_1__* spi; int /*<<< orphan*/ * buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CC2520_CMD_MEMORY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static int
FUNC6(struct cc2520_private *priv, u8 reg, u8 *data)
{
	int status;
	struct spi_message msg;
	struct spi_transfer xfer1 = {
		.len = 0,
		.tx_buf = priv->buf,
		.rx_buf = priv->buf,
	};

	struct spi_transfer xfer2 = {
		.len = 1,
		.rx_buf = data,
	};

	FUNC4(&msg);
	FUNC3(&xfer1, &msg);
	FUNC3(&xfer2, &msg);

	FUNC1(&priv->buffer_mutex);
	priv->buf[xfer1.len++] = CC2520_CMD_MEMORY_READ;
	priv->buf[xfer1.len++] = reg;

	status = FUNC5(priv->spi, &msg);
	FUNC0(&priv->spi->dev,
		"spi status = %d\n", status);
	if (msg.status)
		status = msg.status;

	FUNC2(&priv->buffer_mutex);

	return status;
}