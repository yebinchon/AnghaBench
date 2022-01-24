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
typedef  int /*<<< orphan*/  uint32_t ;
struct nand_chip {int dummy; } ;
struct davinci_nand_info {scalar_t__ core_chipsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NANDFCR_OFFSET ; 
 int /*<<< orphan*/  davinci_nand_lock ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_nand_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct davinci_nand_info* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nand_chip *chip, int mode)
{
	struct davinci_nand_info *info;
	uint32_t nandcfr;
	unsigned long flags;

	info = FUNC7(FUNC4(chip));

	/* Reset ECC hardware */
	FUNC3(FUNC4(chip));

	FUNC5(&davinci_nand_lock, flags);

	/* Restart ECC hardware */
	nandcfr = FUNC1(info, NANDFCR_OFFSET);
	nandcfr |= FUNC0(8 + info->core_chipsel);
	FUNC2(info, NANDFCR_OFFSET, nandcfr);

	FUNC6(&davinci_nand_lock, flags);
}