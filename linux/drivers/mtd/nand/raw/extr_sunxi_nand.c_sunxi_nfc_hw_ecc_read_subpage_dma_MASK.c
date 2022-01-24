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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct nand_chip {int /*<<< orphan*/  cur_cs; TYPE_1__ ecc; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC3 (struct nand_chip*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nand_chip *nand,
					     u32 data_offs, u32 readlen,
					     u8 *buf, int page)
{
	int nchunks = FUNC0(data_offs + readlen, nand->ecc.size);
	int ret;

	FUNC4(nand, nand->cur_cs);

	FUNC1(nand, page, 0, NULL, 0);

	ret = FUNC2(nand, buf, false, page, nchunks);
	if (ret >= 0)
		return ret;

	/* Fallback to PIO mode */
	return FUNC3(nand, data_offs, readlen,
					     buf, page);
}