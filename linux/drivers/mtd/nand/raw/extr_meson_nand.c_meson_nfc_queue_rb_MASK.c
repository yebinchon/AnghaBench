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
typedef  int u32 ;
struct TYPE_4__ {int tbers_max; int /*<<< orphan*/  twb; } ;
struct TYPE_3__ {int chip_select; } ;
struct meson_nfc {int /*<<< orphan*/  completion; scalar_t__ reg_base; TYPE_2__ timing; TYPE_1__ param; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FIFO_EMPTY_TIMEOUT ; 
 int NFC_CMD_RB ; 
 int NFC_CMD_RB_INT ; 
 int NFC_RB_IRQ_EN ; 
 scalar_t__ NFC_REG_CFG ; 
 scalar_t__ NFC_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct meson_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_nfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct meson_nfc *nfc, int timeout_ms)
{
	u32 cmd, cfg;
	int ret = 0;

	FUNC0(nfc, nfc->timing.twb);
	FUNC1(nfc);
	FUNC2(nfc, CMD_FIFO_EMPTY_TIMEOUT);

	cfg = FUNC4(nfc->reg_base + NFC_REG_CFG);
	cfg |= NFC_RB_IRQ_EN;
	FUNC7(cfg, nfc->reg_base + NFC_REG_CFG);

	FUNC5(&nfc->completion);

	/* use the max erase time as the maximum clock for waiting R/B */
	cmd = NFC_CMD_RB | NFC_CMD_RB_INT
		| nfc->param.chip_select | nfc->timing.tbers_max;
	FUNC7(cmd, nfc->reg_base + NFC_REG_CMD);

	ret = FUNC6(&nfc->completion,
					  FUNC3(timeout_ms));
	if (ret == 0)
		ret = -1;

	return ret;
}