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
typedef  int u32 ;
struct nand_chip {int dummy; } ;
struct meson_nfc {scalar_t__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int NFC_CMD_M2N ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_nfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_nfc*,int) ; 
 struct meson_nfc* FUNC5 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *nand, u8 *buf, int len)
{
	struct meson_nfc *nfc = FUNC5(nand);
	int ret = 0;
	u32 cmd;

	ret = FUNC2(nand, buf, len, NULL,
					 0, DMA_TO_DEVICE);
	if (ret)
		return ret;

	cmd = NFC_CMD_M2N | (len & FUNC0(5, 0));
	FUNC6(cmd, nfc->reg_base + NFC_REG_CMD);

	FUNC3(nfc);
	FUNC4(nfc, 1000);
	FUNC1(nand, len, 0, DMA_TO_DEVICE);

	return ret;
}