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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int (* read_page ) (struct nand_chip*,int /*<<< orphan*/ *,int,int) ;} ;
struct nand_chip {TYPE_1__ ecc; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip, int page)
{
	u8 *buf = FUNC0(chip);

	return chip->ecc.read_page(chip, buf, true, page);
}