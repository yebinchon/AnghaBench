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
struct cvm_mmc_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cvm_mmc_host*) ; 
 int MIO_EMM_RSP_STS_SWITCH_VAL ; 
 scalar_t__ FUNC1 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct cvm_mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct cvm_mmc_host *host, u64 emm_switch)
{
	int retries = 100;
	u64 rsp_sts;
	int bus_id;

	/*
	 * Modes setting only taken from slot 0. Work around that hardware
	 * issue by first switching to slot 0.
	 */
	bus_id = FUNC4(emm_switch);
	FUNC3(&emm_switch);
	FUNC8(emm_switch, host->base + FUNC1(host));

	FUNC6(&emm_switch, bus_id);
	FUNC8(emm_switch, host->base + FUNC1(host));

	/* wait for the switch to finish */
	do {
		rsp_sts = FUNC5(host->base + FUNC0(host));
		if (!(rsp_sts & MIO_EMM_RSP_STS_SWITCH_VAL))
			break;
		FUNC7(10);
	} while (--retries);

	FUNC2(host);
}