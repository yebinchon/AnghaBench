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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int /*<<< orphan*/  IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC2(struct mtd_info *mtd, u_char *buf, int len)
{
	struct nand_chip *nand = FUNC1(mtd);

	FUNC0(nand->legacy.IO_ADDR_R, buf, len);
}