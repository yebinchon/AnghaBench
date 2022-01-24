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
struct spinand_device {int /*<<< orphan*/  oobbuf; } ;
struct nand_pos {int /*<<< orphan*/  target; } ;
struct TYPE_2__ {int /*<<< orphan*/  out; } ;
struct nand_page_io_req {int ooblen; TYPE_1__ oobbuf; int /*<<< orphan*/  ooboffs; struct nand_pos const pos; } ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct spinand_device* FUNC1 (struct nand_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spinand_device*,struct nand_pos const*) ; 
 int FUNC3 (struct spinand_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct spinand_device*) ; 
 int FUNC5 (struct spinand_device*,struct nand_page_io_req*) ; 

__attribute__((used)) static int FUNC6(struct nand_device *nand, const struct nand_pos *pos)
{
	struct spinand_device *spinand = FUNC1(nand);
	struct nand_page_io_req req = {
		.pos = *pos,
		.ooboffs = 0,
		.ooblen = 2,
		.oobbuf.out = spinand->oobbuf,
	};
	int ret;

	/* Erase block before marking it bad. */
	ret = FUNC3(spinand, pos->target);
	if (ret)
		return ret;

	ret = FUNC4(spinand);
	if (ret)
		return ret;

	FUNC2(spinand, pos);

	FUNC0(spinand->oobbuf, 0, 2);
	return FUNC5(spinand, &req);
}