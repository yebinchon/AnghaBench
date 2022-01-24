#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct s3c2410_nand_mtd {TYPE_2__* set; struct s3c2410_nand_info* info; } ;
struct s3c2410_nand_info {unsigned long sel_bit; int /*<<< orphan*/  sel_reg; TYPE_1__* platform; int /*<<< orphan*/  device; } ;
struct nand_chip {int dummy; } ;
struct TYPE_4__ {int nr_chips; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* select_chip ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_ENABLE ; 
 int /*<<< orphan*/  CLOCK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct s3c2410_nand_mtd* FUNC1 (struct nand_chip*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c2410_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nand_chip *this, int chip)
{
	struct s3c2410_nand_info *info;
	struct s3c2410_nand_mtd *nmtd;
	unsigned long cur;

	nmtd = FUNC1(this);
	info = nmtd->info;

	if (chip != -1)
		FUNC3(info, CLOCK_ENABLE);

	cur = FUNC2(info->sel_reg);

	if (chip == -1) {
		cur |= info->sel_bit;
	} else {
		if (nmtd->set != NULL && chip > nmtd->set->nr_chips) {
			FUNC0(info->device, "invalid chip %d\n", chip);
			return;
		}

		if (info->platform != NULL) {
			if (info->platform->select_chip != NULL)
				(info->platform->select_chip) (nmtd->set, chip);
		}

		cur &= ~info->sel_bit;
	}

	FUNC5(cur, info->sel_reg);

	if (chip == -1)
		FUNC3(info, CLOCK_SUSPEND);
}