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
struct meson_host {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_BLK_LEN_MASK ; 
 int /*<<< orphan*/  CFG_ERR_ABORT ; 
 int /*<<< orphan*/  CFG_RC_CC_MASK ; 
 int /*<<< orphan*/  CFG_RESP_TIMEOUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SD_EMMC_CFG ; 
 int /*<<< orphan*/  SD_EMMC_CFG_BLK_SIZE ; 
 int /*<<< orphan*/  SD_EMMC_CFG_CMD_GAP ; 
 int /*<<< orphan*/  SD_EMMC_CFG_RESP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct meson_host *host)
{
	u32 cfg = 0;

	cfg |= FUNC0(CFG_RESP_TIMEOUT_MASK,
			  FUNC1(SD_EMMC_CFG_RESP_TIMEOUT));
	cfg |= FUNC0(CFG_RC_CC_MASK, FUNC1(SD_EMMC_CFG_CMD_GAP));
	cfg |= FUNC0(CFG_BLK_LEN_MASK, FUNC1(SD_EMMC_CFG_BLK_SIZE));

	/* abort chain on R/W errors */
	cfg |= CFG_ERR_ABORT;

	FUNC2(cfg, host->regs + SD_EMMC_CFG);
}