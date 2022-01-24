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
struct nand_pos {int dummy; } ;
struct nand_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* isbad ) (struct nand_device*,struct nand_pos const*) ;} ;

/* Variables and functions */
 int NAND_BBT_BLOCK_FACTORY_BAD ; 
 int NAND_BBT_BLOCK_GOOD ; 
 int NAND_BBT_BLOCK_STATUS_UNKNOWN ; 
 int NAND_BBT_BLOCK_WORN ; 
 int FUNC0 (struct nand_device*,unsigned int) ; 
 scalar_t__ FUNC1 (struct nand_device*) ; 
 unsigned int FUNC2 (struct nand_device*,struct nand_pos const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_device*,unsigned int,int) ; 
 int FUNC4 (struct nand_device*,struct nand_pos const*) ; 
 int FUNC5 (struct nand_device*,struct nand_pos const*) ; 

bool FUNC6(struct nand_device *nand, const struct nand_pos *pos)
{
	if (FUNC1(nand)) {
		unsigned int entry;
		int status;

		entry = FUNC2(nand, pos);
		status = FUNC0(nand, entry);
		/* Lazy block status retrieval */
		if (status == NAND_BBT_BLOCK_STATUS_UNKNOWN) {
			if (nand->ops->isbad(nand, pos))
				status = NAND_BBT_BLOCK_FACTORY_BAD;
			else
				status = NAND_BBT_BLOCK_GOOD;

			FUNC3(nand, entry, status);
		}

		if (status == NAND_BBT_BLOCK_WORN ||
		    status == NAND_BBT_BLOCK_FACTORY_BAD)
			return true;

		return false;
	}

	return nand->ops->isbad(nand, pos);
}