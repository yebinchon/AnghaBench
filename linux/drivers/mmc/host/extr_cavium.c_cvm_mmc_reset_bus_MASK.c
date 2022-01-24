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
struct cvm_mmc_slot {int cached_switch; struct cvm_mmc_host* host; int /*<<< orphan*/  bus_id; } ;
struct cvm_mmc_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cvm_mmc_host*) ; 
 int MIO_EMM_SWITCH_ERR0 ; 
 int MIO_EMM_SWITCH_ERR1 ; 
 int MIO_EMM_SWITCH_ERR2 ; 
 int MIO_EMM_SWITCH_EXE ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct cvm_mmc_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct cvm_mmc_slot *slot)
{
	struct cvm_mmc_host *host = slot->host;
	u64 emm_switch, wdog;

	emm_switch = FUNC4(slot->host->base + FUNC0(host));
	emm_switch &= ~(MIO_EMM_SWITCH_EXE | MIO_EMM_SWITCH_ERR0 |
			MIO_EMM_SWITCH_ERR1 | MIO_EMM_SWITCH_ERR2);
	FUNC5(&emm_switch, slot->bus_id);

	wdog = FUNC4(slot->host->base + FUNC1(host));
	FUNC2(slot->host, emm_switch);

	slot->cached_switch = emm_switch;

	FUNC3(20);

	FUNC6(wdog, slot->host->base + FUNC1(host));
}