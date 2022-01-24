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
struct mxic_nand_ctlr {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ HC_CFG ; 
 int FUNC0 (int) ; 
 int HC_CFG_MAN_CS_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_CFG_TYPE_RAW_NAND ; 
 scalar_t__ HC_EN ; 
 int INT_RDY_PIN ; 
 scalar_t__ INT_SIG_EN ; 
 int INT_STS_ALL ; 
 scalar_t__ INT_STS_EN ; 
 scalar_t__ LRD_CFG ; 
 scalar_t__ LRD_CTRL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct mxic_nand_ctlr *nfc)
{
	FUNC5(FUNC1(8) | FUNC3(1, HC_CFG_TYPE_RAW_NAND) |
	       FUNC2(0) | HC_CFG_MAN_CS_EN |
	       FUNC0(1), nfc->regs + HC_CFG);
	FUNC5(INT_STS_ALL, nfc->regs + INT_STS_EN);
	FUNC5(INT_RDY_PIN, nfc->regs + INT_SIG_EN);
	FUNC5(0x0, nfc->regs + FUNC4(0));
	FUNC5(0, nfc->regs + LRD_CFG);
	FUNC5(0, nfc->regs + LRD_CTRL);
	FUNC5(0x0, nfc->regs + HC_EN);
}