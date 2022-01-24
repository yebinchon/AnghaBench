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
typedef  int u64 ;
struct cvm_mmc_slot {size_t bus_id; int cached_switch; int cached_rca; int /*<<< orphan*/  dat_cnt; int /*<<< orphan*/  cmd_cnt; struct cvm_mmc_host* host; } ;
struct cvm_mmc_host {size_t last_slot; scalar_t__ base; struct cvm_mmc_slot** slot; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 scalar_t__ FUNC2 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  MIO_EMM_SAMPLE_CMD_CNT ; 
 int /*<<< orphan*/  MIO_EMM_SAMPLE_DAT_CNT ; 
 scalar_t__ FUNC3 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct cvm_mmc_host*,int) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct cvm_mmc_slot *slot)
{
	struct cvm_mmc_host *host = slot->host;
	struct cvm_mmc_slot *old_slot;
	u64 emm_sample, emm_switch;

	if (slot->bus_id == host->last_slot)
		return;

	if (host->last_slot >= 0 && host->slot[host->last_slot]) {
		old_slot = host->slot[host->last_slot];
		old_slot->cached_switch = FUNC5(host->base + FUNC3(host));
		old_slot->cached_rca = FUNC5(host->base + FUNC1(host));
	}

	FUNC7(slot->cached_rca, host->base + FUNC1(host));
	emm_switch = slot->cached_switch;
	FUNC6(&emm_switch, slot->bus_id);
	FUNC4(host, emm_switch);

	emm_sample = FUNC0(MIO_EMM_SAMPLE_CMD_CNT, slot->cmd_cnt) |
		     FUNC0(MIO_EMM_SAMPLE_DAT_CNT, slot->dat_cnt);
	FUNC7(emm_sample, host->base + FUNC2(host));

	host->last_slot = slot->bus_id;
}