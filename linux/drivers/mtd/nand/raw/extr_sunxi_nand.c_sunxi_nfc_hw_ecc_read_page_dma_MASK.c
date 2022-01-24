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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  steps; } ;
struct nand_chip {TYPE_1__ ecc; int /*<<< orphan*/  cur_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *nand, u8 *buf,
					  int oob_required, int page)
{
	int ret;

	FUNC3(nand, nand->cur_cs);

	FUNC0(nand, page, 0, NULL, 0);

	ret = FUNC1(nand, buf, oob_required, page,
					       nand->ecc.steps);
	if (ret >= 0)
		return ret;

	/* Fallback to PIO mode */
	return FUNC2(nand, buf, oob_required, page);
}