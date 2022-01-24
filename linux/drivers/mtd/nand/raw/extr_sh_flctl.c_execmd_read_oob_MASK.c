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
struct sh_flctl {scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sh_flctl*) ; 
 int NAND_CMD_READ0 ; 
 int NAND_CMD_READSTART ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 struct sh_flctl* FUNC2 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_flctl*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC7 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct mtd_info *mtd, int page_addr)
{
	struct sh_flctl *flctl = FUNC2(mtd);
	int page_sectors = flctl->page_size ? 4 : 1;
	int i;

	FUNC5(mtd, NAND_CMD_READ0,
		(NAND_CMD_READSTART << 8) | NAND_CMD_READ0);

	FUNC1(flctl);

	for (i = 0; i < page_sectors; i++) {
		FUNC4(mtd, (512 + 16) * i + 512 , page_addr);
		FUNC8(16, FUNC0(flctl));

		FUNC6(flctl);
		FUNC3(flctl, 16, 16 * i);
		FUNC7(flctl);
	}
}