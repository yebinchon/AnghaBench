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
struct TYPE_2__ {int (* block_bad ) (struct nand_chip*,int /*<<< orphan*/ ) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip, loff_t ofs)
{
	if (chip->legacy.block_bad)
		return chip->legacy.block_bad(chip, ofs);

	return FUNC0(chip, ofs);
}