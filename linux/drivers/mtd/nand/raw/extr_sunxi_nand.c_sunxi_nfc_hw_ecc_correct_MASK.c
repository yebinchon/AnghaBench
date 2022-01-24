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
typedef  int u32 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_ecc_ctrl {scalar_t__ bytes; scalar_t__ size; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int EBADMSG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ NFC_REG_PAT_ID ; 
 int /*<<< orphan*/  FUNC4 (int*,int,scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 struct sunxi_nfc* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nand_chip *nand, u8 *data, u8 *oob,
				    int step, u32 status, bool *erased)
{
	struct sunxi_nfc *nfc = FUNC6(nand->controller);
	struct nand_ecc_ctrl *ecc = &nand->ecc;
	u32 tmp;

	*erased = false;

	if (status & FUNC0(step))
		return -EBADMSG;

	if (status & FUNC2(step)) {
		u8 pattern;

		if (FUNC7(!(FUNC5(nfc->regs + NFC_REG_PAT_ID) & 0x1))) {
			pattern = 0x0;
		} else {
			pattern = 0xff;
			*erased = true;
		}

		if (data)
			FUNC4(data, pattern, ecc->size);

		if (oob)
			FUNC4(oob, pattern, ecc->bytes + 4);

		return 0;
	}

	tmp = FUNC5(nfc->regs + FUNC3(step));

	return FUNC1(step, tmp);
}