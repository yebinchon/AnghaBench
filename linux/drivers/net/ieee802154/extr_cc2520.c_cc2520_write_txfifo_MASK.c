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
typedef  int u8 ;
struct spi_transfer {int len; int* tx_buf; int* rx_buf; } ;
struct spi_message {int status; } ;
struct cc2520_private {int* buf; int /*<<< orphan*/  buffer_mutex; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CC2520_CMD_TXBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (TYPE_1__*,struct spi_message*) ; 

__attribute__((used)) static int
FUNC6(struct cc2520_private *priv, u8 pkt_len, u8 *data, u8 len)
{
	int status;

	/* length byte must include FCS even
	 * if it is calculated in the hardware
	 */
	int len_byte = pkt_len;

	struct spi_message msg;

	struct spi_transfer xfer_head = {
		.len = 0,
		.tx_buf = priv->buf,
		.rx_buf = priv->buf,
	};
	struct spi_transfer xfer_len = {
		.len = 1,
		.tx_buf = &len_byte,
	};
	struct spi_transfer xfer_buf = {
		.len = len,
		.tx_buf = data,
	};

	FUNC4(&msg);
	FUNC3(&xfer_head, &msg);
	FUNC3(&xfer_len, &msg);
	FUNC3(&xfer_buf, &msg);

	FUNC1(&priv->buffer_mutex);
	priv->buf[xfer_head.len++] = CC2520_CMD_TXBUF;
	FUNC0(&priv->spi->dev,
		 "TX_FIFO cmd buf[0] = %02x\n", priv->buf[0]);

	status = FUNC5(priv->spi, &msg);
	FUNC0(&priv->spi->dev, "status = %d\n", status);
	if (msg.status)
		status = msg.status;
	FUNC0(&priv->spi->dev, "status = %d\n", status);
	FUNC0(&priv->spi->dev, "buf[0] = %02x\n", priv->buf[0]);
	FUNC2(&priv->buffer_mutex);

	return status;
}