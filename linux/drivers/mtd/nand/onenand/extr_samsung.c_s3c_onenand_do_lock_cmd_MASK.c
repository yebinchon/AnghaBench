#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct onenand_chip {int erase_shift; int /*<<< orphan*/  (* wait ) (struct mtd_info*,int /*<<< orphan*/ ) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef  int loff_t ;
struct TYPE_3__ {int (* mem_addr ) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FL_LOCKING ; 
 int ONENAND_CMD_LOCK ; 
 int /*<<< orphan*/  ONENAND_LOCK_END ; 
 int /*<<< orphan*/  ONENAND_LOCK_START ; 
 int /*<<< orphan*/  ONENAND_UNLOCK_END ; 
 int /*<<< orphan*/  ONENAND_UNLOCK_START ; 
 TYPE_1__* onenand ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mtd_info *mtd, loff_t ofs,
				    size_t len, int cmd)
{
	struct onenand_chip *this = mtd->priv;
	int start, end, start_mem_addr, end_mem_addr;

	start = ofs >> this->erase_shift;
	start_mem_addr = onenand->mem_addr(start, 0, 0);
	end = start + (len >> this->erase_shift) - 1;
	end_mem_addr = onenand->mem_addr(end, 0, 0);

	if (cmd == ONENAND_CMD_LOCK) {
		FUNC1(ONENAND_LOCK_START, FUNC0(onenand,
							     start_mem_addr));
		FUNC1(ONENAND_LOCK_END, FUNC0(onenand,
							   end_mem_addr));
	} else {
		FUNC1(ONENAND_UNLOCK_START, FUNC0(onenand,
							       start_mem_addr));
		FUNC1(ONENAND_UNLOCK_END, FUNC0(onenand,
							     end_mem_addr));
	}

	this->wait(mtd, FL_LOCKING);
}