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
typedef  int u64 ;
struct nand_chip {int page_shift; int /*<<< orphan*/  oob_poi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct nand_chip*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip, int page)
{
	return FUNC0(FUNC1(chip), chip,
			      (u64)page << chip->page_shift, NULL,
			      chip->oob_poi);
}