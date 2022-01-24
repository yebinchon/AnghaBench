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
struct nand_chip {int bbt_erase_shift; } ;
struct nand_bbt_descr {int* pages; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  BBT_BLOCK_WORN ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *this,
			       struct nand_bbt_descr *td,
			       int chip, int block)
{
	loff_t to;
	int res;

	FUNC0(this, block, BBT_BLOCK_WORN);

	to = (loff_t)block << this->bbt_erase_shift;
	res = FUNC1(this, to);
	if (res)
		FUNC2("nand_bbt: error %d while marking block %d bad\n",
			res, block);

	td->pages[chip] = -1;
}