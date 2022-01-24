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
typedef  int /*<<< orphan*/  u_char ;
typedef  int u8 ;
struct spi_nor {int /*<<< orphan*/  read_opcode; struct aspeed_smc_chip* priv; } ;
struct TYPE_2__ {int read_dummy; } ;
struct aspeed_smc_chip {int /*<<< orphan*/  ahb_base; TYPE_1__ nor; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_nor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct spi_nor *nor, loff_t from,
				    size_t len, u_char *read_buf)
{
	struct aspeed_smc_chip *chip = nor->priv;
	int i;
	u8 dummy = 0xFF;

	FUNC2(nor);
	FUNC1(nor, nor->read_opcode, from);
	for (i = 0; i < chip->nor.read_dummy / 8; i++)
		FUNC4(chip->ahb_base, &dummy, sizeof(dummy));

	FUNC0(read_buf, chip->ahb_base, len);
	FUNC3(nor);
	return len;
}