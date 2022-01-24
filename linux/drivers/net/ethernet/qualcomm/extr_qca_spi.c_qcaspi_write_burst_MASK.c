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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  transfer ;
struct spi_transfer {scalar_t__ len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {scalar_t__ actual_length; } ;
struct qcaspi {int /*<<< orphan*/  spi_dev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int QCA7K_SPI_EXTERNAL ; 
 int QCA7K_SPI_WRITE ; 
 scalar_t__ QCASPI_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static u32
FUNC6(struct qcaspi *qca, u8 *src, u32 len)
{
	__be16 cmd;
	struct spi_message msg;
	struct spi_transfer transfer[2];
	int ret;

	FUNC1(&transfer, 0, sizeof(transfer));
	FUNC4(&msg);

	cmd = FUNC0(QCA7K_SPI_WRITE | QCA7K_SPI_EXTERNAL);
	transfer[0].tx_buf = &cmd;
	transfer[0].len = QCASPI_CMD_LEN;
	transfer[1].tx_buf = src;
	transfer[1].len = len;

	FUNC3(&transfer[0], &msg);
	FUNC3(&transfer[1], &msg);
	ret = FUNC5(qca->spi_dev, &msg);

	if (ret || (msg.actual_length != QCASPI_CMD_LEN + len)) {
		FUNC2(qca);
		return 0;
	}

	return len;
}