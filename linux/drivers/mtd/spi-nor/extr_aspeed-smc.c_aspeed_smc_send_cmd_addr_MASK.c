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
typedef  int u8 ;
typedef  int u32 ;
struct spi_nor {int addr_width; struct aspeed_smc_chip* priv; } ;
struct aspeed_smc_chip {int /*<<< orphan*/  ahb_base; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct spi_nor *nor, u8 cmd, u32 addr)
{
	struct aspeed_smc_chip *chip = nor->priv;
	__be32 temp;
	u32 cmdaddr;

	switch (nor->addr_width) {
	default:
		FUNC0(1, "Unexpected address width %u, defaulting to 3\n",
			  nor->addr_width);
		/* FALLTHROUGH */
	case 3:
		cmdaddr = addr & 0xFFFFFF;
		cmdaddr |= cmd << 24;

		temp = FUNC2(cmdaddr);
		FUNC1(chip->ahb_base, &temp, 4);
		break;
	case 4:
		temp = FUNC2(addr);
		FUNC1(chip->ahb_base, &cmd, 1);
		FUNC1(chip->ahb_base, &temp, 4);
		break;
	}
}