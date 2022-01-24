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
typedef  int /*<<< orphan*/  u8 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int NAND_NEED_SCRAMBLING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sunxi_nfc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct nand_chip *nand, u8 *oob,
						int step, bool bbm, int page)
{
	struct sunxi_nfc *nfc = FUNC4(nand->controller);

	FUNC3(FUNC1(nfc->regs + FUNC0(step)),
				   oob);

	/* De-randomize the Bad Block Marker. */
	if (bbm && (nand->options & NAND_NEED_SCRAMBLING))
		FUNC2(nand, page, oob);
}