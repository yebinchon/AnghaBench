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
struct spi_transfer {unsigned char* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
typedef  int /*<<< orphan*/  command ;

/* Variables and functions */
 unsigned char MCHP23K256_CMD_WRITE_STATUS ; 
 unsigned char MCHP23K256_MODE_SEQ ; 
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (struct spi_device*,struct spi_message*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct spi_transfer transfer = {};
	struct spi_message message;
	unsigned char command[2];

	FUNC1(&message);

	command[0] = MCHP23K256_CMD_WRITE_STATUS;
	command[1] = MCHP23K256_MODE_SEQ;

	transfer.tx_buf = command;
	transfer.len = sizeof(command);
	FUNC0(&transfer, &message);

	return FUNC2(spi, &message);
}