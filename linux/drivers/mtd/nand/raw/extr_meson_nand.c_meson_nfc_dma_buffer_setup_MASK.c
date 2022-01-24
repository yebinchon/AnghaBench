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
typedef  int /*<<< orphan*/  u32 ;
struct nand_chip {int dummy; } ;
struct meson_nfc {scalar_t__ reg_base; void* iaddr; void* daddr; int /*<<< orphan*/  dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  NFC_CMD_ADH ; 
 int /*<<< orphan*/  NFC_CMD_ADL ; 
 int /*<<< orphan*/  NFC_CMD_AIH ; 
 int /*<<< orphan*/  NFC_CMD_AIL ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int,int) ; 
 struct meson_nfc* FUNC8 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct nand_chip *nand, void *databuf,
				      int datalen, void *infobuf, int infolen,
				      enum dma_data_direction dir)
{
	struct meson_nfc *nfc = FUNC8(nand);
	u32 cmd;
	int ret = 0;

	nfc->daddr = FUNC5(nfc->dev, databuf, datalen, dir);
	ret = FUNC6(nfc->dev, nfc->daddr);
	if (ret) {
		FUNC4(nfc->dev, "DMA mapping error\n");
		return ret;
	}
	cmd = FUNC1(NFC_CMD_ADL, nfc->daddr);
	FUNC9(cmd, nfc->reg_base + NFC_REG_CMD);

	cmd = FUNC0(NFC_CMD_ADH, nfc->daddr);
	FUNC9(cmd, nfc->reg_base + NFC_REG_CMD);

	if (infobuf) {
		nfc->iaddr = FUNC5(nfc->dev, infobuf, infolen, dir);
		ret = FUNC6(nfc->dev, nfc->iaddr);
		if (ret) {
			FUNC4(nfc->dev, "DMA mapping error\n");
			FUNC7(nfc->dev,
					 nfc->daddr, datalen, dir);
			return ret;
		}
		cmd = FUNC3(NFC_CMD_AIL, nfc->iaddr);
		FUNC9(cmd, nfc->reg_base + NFC_REG_CMD);

		cmd = FUNC2(NFC_CMD_AIH, nfc->iaddr);
		FUNC9(cmd, nfc->reg_base + NFC_REG_CMD);
	}

	return ret;
}