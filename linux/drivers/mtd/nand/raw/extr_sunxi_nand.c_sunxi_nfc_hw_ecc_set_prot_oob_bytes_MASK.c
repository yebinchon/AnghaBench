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
typedef  int /*<<< orphan*/  user_data ;
typedef  int /*<<< orphan*/  u8 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_chip {int options; int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 int NAND_NEED_SCRAMBLING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ *) ; 
 struct sunxi_nfc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct nand_chip *nand,
						const u8 *oob, int step,
						bool bbm, int page)
{
	struct sunxi_nfc *nfc = FUNC4(nand->controller);
	u8 user_data[4];

	/* Randomize the Bad Block Marker. */
	if (bbm && (nand->options & NAND_NEED_SCRAMBLING)) {
		FUNC1(user_data, oob, sizeof(user_data));
		FUNC3(nand, page, user_data);
		oob = user_data;
	}

	FUNC5(FUNC2(oob),
	       nfc->regs + FUNC0(step));
}