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
typedef  int /*<<< orphan*/  u64 ;
struct cvm_mmc_slot {unsigned long long bus_id; int clock; int /*<<< orphan*/  cached_switch; TYPE_1__* mmc; struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {unsigned long long emm_cfg; int sys_freq; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_min; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 scalar_t__ FUNC2 (struct cvm_mmc_host*) ; 
 scalar_t__ FUNC3 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_SWITCH_CLK_HI ; 
 int /*<<< orphan*/  MIO_EMM_SWITCH_CLK_LO ; 
 int /*<<< orphan*/  MIO_EMM_SWITCH_POWER_CLASS ; 
 int /*<<< orphan*/  FUNC4 (struct cvm_mmc_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cvm_mmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (struct cvm_mmc_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct cvm_mmc_slot *slot)
{
	struct cvm_mmc_host *host = slot->host;
	u64 emm_switch;

	/* Enable this bus slot. */
	host->emm_cfg |= (1ull << slot->bus_id);
	FUNC9(host->emm_cfg, slot->host->base + FUNC1(host));
	FUNC8(10);

	/* Program initial clock speed and power. */
	FUNC4(slot, slot->mmc->f_min);
	emm_switch = FUNC0(MIO_EMM_SWITCH_POWER_CLASS, 10);
	emm_switch |= FUNC0(MIO_EMM_SWITCH_CLK_HI,
				 (host->sys_freq / slot->clock) / 2);
	emm_switch |= FUNC0(MIO_EMM_SWITCH_CLK_LO,
				 (host->sys_freq / slot->clock) / 2);

	/* Make the changes take effect on this bus slot. */
	FUNC6(&emm_switch, slot->bus_id);
	FUNC5(host, emm_switch);

	slot->cached_switch = emm_switch;

	/*
	 * Set watchdog timeout value and default reset value
	 * for the mask register. Finally, set the CARD_RCA
	 * bit so that we can get the card address relative
	 * to the CMD register for CMD7 transactions.
	 */
	FUNC7(slot, 0);
	FUNC9(0xe4390080ull, host->base + FUNC3(host));
	FUNC9(1, host->base + FUNC2(host));
	return 0;
}