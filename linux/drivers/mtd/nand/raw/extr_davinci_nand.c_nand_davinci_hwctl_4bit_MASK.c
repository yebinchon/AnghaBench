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
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct davinci_nand_info {int core_chipsel; int is_readmode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NANDFCR_OFFSET ; 
 int /*<<< orphan*/  NAND_4BIT_ECC1_OFFSET ; 
 int NAND_ECC_READ ; 
 int /*<<< orphan*/  davinci_nand_lock ; 
 int FUNC1 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_nand_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct davinci_nand_info* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nand_chip *chip, int mode)
{
	struct davinci_nand_info *info = FUNC6(FUNC3(chip));
	unsigned long flags;
	u32 val;

	/* Reset ECC hardware */
	FUNC1(info, NAND_4BIT_ECC1_OFFSET);

	FUNC4(&davinci_nand_lock, flags);

	/* Start 4-bit ECC calculation for read/write */
	val = FUNC1(info, NANDFCR_OFFSET);
	val &= ~(0x03 << 4);
	val |= (info->core_chipsel << 4) | FUNC0(12);
	FUNC2(info, NANDFCR_OFFSET, val);

	info->is_readmode = (mode == NAND_ECC_READ);

	FUNC5(&davinci_nand_lock, flags);
}