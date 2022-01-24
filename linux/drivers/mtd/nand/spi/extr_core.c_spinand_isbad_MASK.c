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
struct spinand_device {int* oobbuf; } ;
struct nand_pos {int /*<<< orphan*/  target; } ;
struct TYPE_2__ {int* in; } ;
struct nand_page_io_req {int ooblen; int /*<<< orphan*/  mode; TYPE_1__ oobbuf; int /*<<< orphan*/  ooboffs; struct nand_pos const pos; } ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTD_OPS_RAW ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 struct spinand_device* FUNC1 (struct nand_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spinand_device*,struct nand_page_io_req*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spinand_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct nand_device *nand, const struct nand_pos *pos)
{
	struct spinand_device *spinand = FUNC1(nand);
	struct nand_page_io_req req = {
		.pos = *pos,
		.ooblen = 2,
		.ooboffs = 0,
		.oobbuf.in = spinand->oobbuf,
		.mode = MTD_OPS_RAW,
	};

	FUNC0(spinand->oobbuf, 0, 2);
	FUNC3(spinand, pos->target);
	FUNC2(spinand, &req, false);
	if (spinand->oobbuf[0] != 0xff || spinand->oobbuf[1] != 0xff)
		return true;

	return false;
}