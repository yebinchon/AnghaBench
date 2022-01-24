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
struct mxic_nand_ctlr {int dummy; } ;

/* Variables and functions */
 unsigned long MXIC_NFC_MAX_CLK_HZ ; 
 int /*<<< orphan*/  FUNC0 (struct mxic_nand_ctlr*) ; 
 int FUNC1 (struct mxic_nand_ctlr*) ; 
 int FUNC2 (struct mxic_nand_ctlr*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mxic_nand_ctlr *nfc, unsigned long freq)
{
	int ret;

	if (freq > MXIC_NFC_MAX_CLK_HZ)
		freq = MXIC_NFC_MAX_CLK_HZ;

	FUNC0(nfc);
	ret = FUNC2(nfc, freq);
	if (ret)
		return ret;

	ret = FUNC1(nfc);
	if (ret)
		return ret;

	return 0;
}