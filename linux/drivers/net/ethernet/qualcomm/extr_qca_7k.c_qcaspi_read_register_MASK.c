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
struct spi_transfer {void* len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int status; } ;
struct qcaspi {int /*<<< orphan*/  spi_dev; scalar_t__ legacy_mode; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int QCA7K_SPI_INTERNAL ; 
 int QCA7K_SPI_READ ; 
 void* QCASPI_CMD_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_message*) ; 

int
FUNC7(struct qcaspi *qca, u16 reg, u16 *result)
{
	__be16 rx_data;
	__be16 tx_data;
	struct spi_transfer transfer[2];
	struct spi_message msg;
	int ret;

	FUNC2(transfer, 0, sizeof(transfer));

	FUNC5(&msg);

	tx_data = FUNC1(QCA7K_SPI_READ | QCA7K_SPI_INTERNAL | reg);
	*result = 0;

	transfer[0].tx_buf = &tx_data;
	transfer[0].len = QCASPI_CMD_LEN;
	transfer[1].rx_buf = &rx_data;
	transfer[1].len = QCASPI_CMD_LEN;

	FUNC4(&transfer[0], &msg);

	if (qca->legacy_mode) {
		FUNC6(qca->spi_dev, &msg);
		FUNC5(&msg);
	}
	FUNC4(&transfer[1], &msg);
	ret = FUNC6(qca->spi_dev, &msg);

	if (!ret)
		ret = msg.status;

	if (ret)
		FUNC3(qca);
	else
		*result = FUNC0(rx_data);

	return ret;
}