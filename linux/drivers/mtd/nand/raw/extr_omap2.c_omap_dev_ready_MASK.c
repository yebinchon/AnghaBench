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
struct omap_nand_info {int /*<<< orphan*/  ready_gpiod; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct omap_nand_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip)
{
	struct omap_nand_info *info = FUNC1(FUNC2(chip));

	return FUNC0(info->ready_gpiod);
}