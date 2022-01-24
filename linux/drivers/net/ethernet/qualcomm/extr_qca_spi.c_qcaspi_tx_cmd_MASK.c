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
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  transfer ;
struct spi_transfer {int len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int status; } ;
struct qcaspi {int /*<<< orphan*/  spi_dev; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int
FUNC6(struct qcaspi *qca, u16 cmd)
{
	__be16 tx_data;
	struct spi_message msg;
	struct spi_transfer transfer;
	int ret;

	FUNC1(&transfer, 0, sizeof(transfer));

	FUNC4(&msg);

	tx_data = FUNC0(cmd);
	transfer.len = sizeof(cmd);
	transfer.tx_buf = &tx_data;
	FUNC3(&transfer, &msg);

	ret = FUNC5(qca->spi_dev, &msg);

	if (!ret)
		ret = msg.status;

	if (ret)
		FUNC2(qca);

	return ret;
}