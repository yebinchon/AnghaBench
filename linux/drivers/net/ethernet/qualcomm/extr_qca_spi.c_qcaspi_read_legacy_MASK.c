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
struct spi_transfer {scalar_t__ len; int /*<<< orphan*/ * rx_buf; } ;
struct spi_message {scalar_t__ actual_length; } ;
struct qcaspi {int /*<<< orphan*/  spi_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qcaspi*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static u32
FUNC5(struct qcaspi *qca, u8 *dst, u32 len)
{
	struct spi_message msg;
	struct spi_transfer transfer;
	int ret;

	FUNC0(&transfer, 0, sizeof(transfer));
	FUNC3(&msg);

	transfer.rx_buf = dst;
	transfer.len = len;

	FUNC2(&transfer, &msg);
	ret = FUNC4(qca->spi_dev, &msg);

	if (ret || (msg.actual_length != len)) {
		FUNC1(qca);
		return 0;
	}

	return len;
}