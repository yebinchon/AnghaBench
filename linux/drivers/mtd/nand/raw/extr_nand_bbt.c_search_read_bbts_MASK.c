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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {int dummy; } ;
struct nand_bbt_descr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int /*<<< orphan*/ *,struct nand_bbt_descr*) ; 

__attribute__((used)) static void FUNC1(struct nand_chip *this, uint8_t *buf,
			     struct nand_bbt_descr *td,
			     struct nand_bbt_descr *md)
{
	/* Search the primary table */
	FUNC0(this, buf, td);

	/* Search the mirror table */
	if (md)
		FUNC0(this, buf, md);
}