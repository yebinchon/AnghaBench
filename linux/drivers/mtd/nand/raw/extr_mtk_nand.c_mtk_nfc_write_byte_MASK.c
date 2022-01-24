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
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct mtk_nfc {TYPE_1__* caps; } ;
struct TYPE_2__ {int max_sector; } ;

/* Variables and functions */
 int CNFG_BYTE_RW ; 
 int CON_BWR ; 
 int CON_SEC_SHIFT ; 
 int /*<<< orphan*/  NFI_CNFG ; 
 int /*<<< orphan*/  NFI_CON ; 
 int /*<<< orphan*/  NFI_DATAW ; 
 int NFI_FSM_CUSTDATA ; 
 int NFI_FSM_MASK ; 
 int /*<<< orphan*/  NFI_STA ; 
 int /*<<< orphan*/  NFI_STRDATA ; 
 int STAR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_nfc*) ; 
 struct mtk_nfc* FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nand_chip *chip, u8 byte)
{
	struct mtk_nfc *nfc = FUNC1(chip);
	u32 reg;

	reg = FUNC2(nfc, NFI_STA) & NFI_FSM_MASK;

	if (reg != NFI_FSM_CUSTDATA) {
		reg = FUNC3(nfc, NFI_CNFG) | CNFG_BYTE_RW;
		FUNC6(nfc, reg, NFI_CNFG);

		reg = nfc->caps->max_sector << CON_SEC_SHIFT | CON_BWR;
		FUNC5(nfc, reg, NFI_CON);

		FUNC6(nfc, STAR_EN, NFI_STRDATA);
	}

	FUNC0(nfc);
	FUNC4(nfc, byte, NFI_DATAW);
}