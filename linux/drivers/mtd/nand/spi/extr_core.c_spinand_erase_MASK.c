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
typedef  int u8 ;
struct spinand_device {int dummy; } ;
struct nand_pos {int /*<<< orphan*/  target; } ;
struct nand_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int STATUS_ERASE_FAILED ; 
 struct spinand_device* FUNC0 (struct nand_device*) ; 
 int FUNC1 (struct spinand_device*,struct nand_pos const*) ; 
 int FUNC2 (struct spinand_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct spinand_device*,int*) ; 
 int FUNC4 (struct spinand_device*) ; 

__attribute__((used)) static int FUNC5(struct nand_device *nand, const struct nand_pos *pos)
{
	struct spinand_device *spinand = FUNC0(nand);
	u8 status;
	int ret;

	ret = FUNC2(spinand, pos->target);
	if (ret)
		return ret;

	ret = FUNC4(spinand);
	if (ret)
		return ret;

	ret = FUNC1(spinand, pos);
	if (ret)
		return ret;

	ret = FUNC3(spinand, &status);
	if (!ret && (status & STATUS_ERASE_FAILED))
		ret = -EIO;

	return ret;
}