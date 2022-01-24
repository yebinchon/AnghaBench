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
typedef  int /*<<< orphan*/  transfer ;
struct spi_transfer {unsigned char* tx_buf; size_t len; unsigned char* rx_buf; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {int dummy; } ;
struct mchp23k256_flash {int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  command ;

/* Variables and functions */
 int MAX_CMD_SIZE ; 
 unsigned char MCHP23K256_CMD_READ ; 
 int /*<<< orphan*/  FUNC0 (struct mchp23k256_flash*,int /*<<< orphan*/ ,unsigned char*) ; 
 size_t FUNC1 (struct mchp23k256_flash*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct spi_message*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct spi_message*) ; 
 struct mchp23k256_flash* FUNC8 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC9(struct mtd_info *mtd, loff_t from, size_t len,
			   size_t *retlen, unsigned char *buf)
{
	struct mchp23k256_flash *flash = FUNC8(mtd);
	struct spi_transfer transfer[2] = {};
	struct spi_message message;
	unsigned char command[MAX_CMD_SIZE];
	int ret;

	FUNC6(&message);

	FUNC2(&transfer, 0, sizeof(transfer));
	command[0] = MCHP23K256_CMD_READ;
	FUNC0(flash, from, command);

	transfer[0].tx_buf = command;
	transfer[0].len = FUNC1(flash);
	FUNC5(&transfer[0], &message);

	transfer[1].rx_buf = buf;
	transfer[1].len = len;
	FUNC5(&transfer[1], &message);

	FUNC3(&flash->lock);

	ret = FUNC7(flash->spi, &message);

	FUNC4(&flash->lock);

	if (ret)
		return ret;

	if (retlen && message.actual_length > sizeof(command))
		*retlen += message.actual_length - sizeof(command);

	return 0;
}