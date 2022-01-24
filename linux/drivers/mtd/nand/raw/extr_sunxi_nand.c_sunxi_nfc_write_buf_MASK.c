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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u32 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct sunxi_nand_chip {TYPE_1__ nand; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int NFC_ACCESS_DIR ; 
 int /*<<< orphan*/  NFC_CMD_INT_FLAG ; 
 int NFC_DATA_SWAP_METHOD ; 
 int NFC_DATA_TRANS ; 
 scalar_t__ NFC_RAM0_BASE ; 
 scalar_t__ NFC_REG_CMD ; 
 scalar_t__ NFC_REG_CNT ; 
 int /*<<< orphan*/  NFC_SRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sunxi_nfc*) ; 
 int FUNC3 (struct sunxi_nfc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sunxi_nand_chip* FUNC4 (struct nand_chip*) ; 
 struct sunxi_nfc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct nand_chip *nand, const uint8_t *buf,
				int len)
{
	struct sunxi_nand_chip *sunxi_nand = FUNC4(nand);
	struct sunxi_nfc *nfc = FUNC5(sunxi_nand->nand.controller);
	int ret;
	int cnt;
	int offs = 0;
	u32 tmp;

	while (len > offs) {
		bool poll = false;

		cnt = FUNC1(len - offs, NFC_SRAM_SIZE);

		ret = FUNC2(nfc);
		if (ret)
			break;

		FUNC6(cnt, nfc->regs + NFC_REG_CNT);
		FUNC0(nfc->regs + NFC_RAM0_BASE, buf + offs, cnt);
		tmp = NFC_DATA_TRANS | NFC_DATA_SWAP_METHOD |
		      NFC_ACCESS_DIR;
		FUNC6(tmp, nfc->regs + NFC_REG_CMD);

		/* Arbitrary limit for polling mode */
		if (cnt < 64)
			poll = true;

		ret = FUNC3(nfc, NFC_CMD_INT_FLAG, poll, 0);
		if (ret)
			break;

		offs += cnt;
	}
}