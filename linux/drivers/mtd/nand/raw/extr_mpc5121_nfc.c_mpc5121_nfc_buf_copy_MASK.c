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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  u_char ;
struct nand_chip {int dummy; } ;
struct mtd_info {scalar_t__ writesize; } ;
struct mpc5121_nfc_prv {scalar_t__ column; scalar_t__ regs; scalar_t__ spareonly; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*,scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 struct nand_chip* FUNC5 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC6 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC7(struct mtd_info *mtd, u_char *buf, int len,
									int wr)
{
	struct nand_chip *chip = FUNC5(mtd);
	struct mpc5121_nfc_prv *prv = FUNC6(chip);
	uint c = prv->column;
	uint l;

	/* Handle spare area access */
	if (prv->spareonly || c >= mtd->writesize) {
		/* Calculate offset from beginning of spare area */
		if (c >= mtd->writesize)
			c -= mtd->writesize;

		prv->column += len;
		FUNC4(mtd, c, buf, len, wr);
		return;
	}

	/*
	 * Handle main area access - limit copy length to prevent
	 * crossing main/spare boundary.
	 */
	l = FUNC3((uint)len, mtd->writesize - c);
	prv->column += l;

	if (wr)
		FUNC2(prv->regs + FUNC0(0) + c, buf, l);
	else
		FUNC1(buf, prv->regs + FUNC0(0) + c, l);

	/* Handle crossing main/spare boundary */
	if (l != len) {
		buf += l;
		len -= l;
		FUNC7(mtd, buf, len, wr);
	}
}