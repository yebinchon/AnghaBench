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
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct adf7242_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ACCEPT_BEACON_FRAMES ; 
 int ACCEPT_DATA_FRAMES ; 
 int ACCEPT_MACCMD_FRAMES ; 
 int ACCEPT_RESERVED_FRAMES ; 
 int ADDON_EN ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CMD_RC_IDLE ; 
 int /*<<< orphan*/  CMD_RC_PC_RESET ; 
 int /*<<< orphan*/  CMD_RC_RESET ; 
 int /*<<< orphan*/  FIRMWARE ; 
 int IRQ_CSMA_CA ; 
 int IRQ_RX_PKT_RCVD ; 
 int /*<<< orphan*/  REG_AUTO_CFG ; 
 int /*<<< orphan*/  REG_EXTPA_MSC ; 
 int /*<<< orphan*/  REG_FFILT_CFG ; 
 int /*<<< orphan*/  REG_IRQ1_EN0 ; 
 int /*<<< orphan*/  REG_IRQ1_EN1 ; 
 int /*<<< orphan*/  REG_IRQ1_SRC0 ; 
 int /*<<< orphan*/  REG_PKT_CFG ; 
 int /*<<< orphan*/  REG_RXFE_CFG ; 
 int RX_AUTO_ACK_EN ; 
 int /*<<< orphan*/  FUNC1 (struct adf7242_local*) ; 
 int /*<<< orphan*/  FUNC2 (struct adf7242_local*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adf7242_local*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct adf7242_local*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adf7242_local*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct adf7242_local *lp)
{
	int ret;
	const struct firmware *fw;

	FUNC2(lp, CMD_RC_RESET);
	FUNC2(lp, CMD_RC_IDLE);

	/* get ADF7242 addon firmware
	 * build this driver as module
	 * and place under /lib/firmware/adf7242_firmware.bin
	 * or compile firmware into the kernel.
	 */
	ret = FUNC8(&fw, FIRMWARE, &lp->spi->dev);
	if (ret) {
		FUNC6(&lp->spi->dev,
			"request_firmware() failed with %d\n", ret);
		return ret;
	}

	ret = FUNC3(lp, (u8 *)fw->data, fw->size);
	if (ret) {
		FUNC6(&lp->spi->dev,
			"upload firmware failed with %d\n", ret);
		FUNC7(fw);
		return ret;
	}

	ret = FUNC4(lp, (u8 *)fw->data, fw->size);
	if (ret) {
		FUNC6(&lp->spi->dev,
			"verify firmware failed with %d\n", ret);
		FUNC7(fw);
		return ret;
	}

	FUNC2(lp, CMD_RC_PC_RESET);

	FUNC7(fw);

	FUNC5(lp, REG_FFILT_CFG,
			  ACCEPT_BEACON_FRAMES |
			  ACCEPT_DATA_FRAMES |
			  ACCEPT_MACCMD_FRAMES |
			  ACCEPT_RESERVED_FRAMES);

	FUNC5(lp, REG_AUTO_CFG, RX_AUTO_ACK_EN);

	FUNC5(lp, REG_PKT_CFG, ADDON_EN | FUNC0(2));

	FUNC5(lp, REG_EXTPA_MSC, 0xF1);
	FUNC5(lp, REG_RXFE_CFG, 0x1D);

	FUNC5(lp, REG_IRQ1_EN0, 0);
	FUNC5(lp, REG_IRQ1_EN1, IRQ_RX_PKT_RCVD | IRQ_CSMA_CA);

	FUNC1(lp);
	FUNC5(lp, REG_IRQ1_SRC0, 0xFF);

	FUNC2(lp, CMD_RC_IDLE);

	return 0;
}