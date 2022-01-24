#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {int /*<<< orphan*/  controller; } ;
struct marvell_nfc_op {int* ndcb; } ;
struct marvell_nfc {scalar_t__ regs; TYPE_1__* caps; int /*<<< orphan*/  dev; } ;
struct marvell_nand_chip {int dummy; } ;
struct TYPE_4__ {int ndcb0_csel; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_nfcv2; } ;

/* Variables and functions */
 scalar_t__ NDCB0 ; 
 int FUNC0 (int) ; 
 int NDCB0_LEN_OVRD ; 
 scalar_t__ NDCR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct marvell_nand_chip* FUNC4 (struct nand_chip*) ; 
 struct marvell_nfc* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct marvell_nand_chip*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct nand_chip *chip,
				 struct marvell_nfc_op *nfc_op)
{
	struct marvell_nand_chip *marvell_nand = FUNC4(chip);
	struct marvell_nfc *nfc = FUNC5(chip->controller);

	FUNC2(nfc->dev, "\nNDCR:  0x%08x\n"
		"NDCB0: 0x%08x\nNDCB1: 0x%08x\nNDCB2: 0x%08x\nNDCB3: 0x%08x\n",
		(u32)FUNC3(nfc->regs + NDCR), nfc_op->ndcb[0],
		nfc_op->ndcb[1], nfc_op->ndcb[2], nfc_op->ndcb[3]);

	FUNC8(FUNC6(marvell_nand)->ndcb0_csel | nfc_op->ndcb[0],
		       nfc->regs + NDCB0);
	FUNC8(nfc_op->ndcb[1], nfc->regs + NDCB0);
	FUNC7(nfc_op->ndcb[2], nfc->regs + NDCB0);

	/*
	 * Write NDCB0 four times only if LEN_OVRD is set or if ADDR6 or ADDR7
	 * fields are used (only available on NFCv2).
	 */
	if (nfc_op->ndcb[0] & NDCB0_LEN_OVRD ||
	    FUNC0(nfc_op->ndcb[0]) >= 6) {
		if (!FUNC1(!nfc->caps->is_nfcv2))
			FUNC7(nfc_op->ndcb[3], nfc->regs + NDCB0);
	}
}