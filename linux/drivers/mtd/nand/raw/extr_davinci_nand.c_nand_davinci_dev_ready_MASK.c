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
struct nand_chip {int dummy; } ;
struct davinci_nand_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NANDFSR_OFFSET ; 
 int FUNC1 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 
 struct davinci_nand_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip)
{
	struct davinci_nand_info *info = FUNC3(FUNC2(chip));

	return FUNC1(info, NANDFSR_OFFSET) & FUNC0(0);
}