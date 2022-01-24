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
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NFC_CMD_N2M ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  PER_INFO_BYTE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nand_chip*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_nfc*) ; 
 int /*<<< orphan*/  FUNC6 (struct meson_nfc*,int) ; 
 struct meson_nfc* FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct nand_chip *nand, u8 *buf, int len)
{
	struct meson_nfc *nfc = FUNC7(nand);
	int ret = 0;
	u32 cmd;
	u8 *info;

	info = FUNC2(PER_INFO_BYTE, GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	ret = FUNC4(nand, buf, len, info,
					 PER_INFO_BYTE, DMA_FROM_DEVICE);
	if (ret)
		goto out;

	cmd = NFC_CMD_N2M | (len & FUNC0(5, 0));
	FUNC8(cmd, nfc->reg_base + NFC_REG_CMD);

	FUNC5(nfc);
	FUNC6(nfc, 1000);
	FUNC3(nand, len, PER_INFO_BYTE, DMA_FROM_DEVICE);

out:
	FUNC1(info);

	return ret;
}