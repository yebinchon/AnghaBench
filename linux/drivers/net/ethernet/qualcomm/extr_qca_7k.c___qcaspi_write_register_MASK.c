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
typedef  int u16 ;
typedef  int /*<<< orphan*/  transfer ;
struct spi_transfer {void* len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int status; } ;
struct qcaspi {int /*<<< orphan*/  spi_dev; scalar_t__ legacy_mode; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int QCA7K_SPI_INTERNAL ; 
 int QCA7K_SPI_WRITE ; 
 void* QCASPI_CMD_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int
FUNC6(struct qcaspi *qca, u16 reg, u16 value)
{
	__be16 tx_data[2];
	struct spi_transfer transfer[2];
	struct spi_message msg;
	int ret;

	FUNC1(&transfer, 0, sizeof(transfer));

	FUNC4(&msg);

	tx_data[0] = FUNC0(QCA7K_SPI_WRITE | QCA7K_SPI_INTERNAL | reg);
	tx_data[1] = FUNC0(value);

	transfer[0].tx_buf = &tx_data[0];
	transfer[0].len = QCASPI_CMD_LEN;
	transfer[1].tx_buf = &tx_data[1];
	transfer[1].len = QCASPI_CMD_LEN;

	FUNC3(&transfer[0], &msg);
	if (qca->legacy_mode) {
		FUNC5(qca->spi_dev, &msg);
		FUNC4(&msg);
	}
	FUNC3(&transfer[1], &msg);
	ret = FUNC5(qca->spi_dev, &msg);

	if (!ret)
		ret = msg.status;

	if (ret)
		FUNC2(qca);

	return ret;
}