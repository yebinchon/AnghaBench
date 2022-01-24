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
struct nand_pos {int dummy; } ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 int NAND_BBT_BLOCK_RESERVED ; 
 int FUNC0 (struct nand_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_device*) ; 
 unsigned int FUNC2 (struct nand_device*,struct nand_pos const*) ; 

bool FUNC3(struct nand_device *nand, const struct nand_pos *pos)
{
	unsigned int entry;
	int status;

	if (!FUNC1(nand))
		return false;

	/* Return info from the table */
	entry = FUNC2(nand, pos);
	status = FUNC0(nand, entry);
	return status == NAND_BBT_BLOCK_RESERVED;
}