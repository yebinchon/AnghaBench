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
typedef  int u32 ;
struct hifmc_host {scalar_t__ regbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_DESELECT_TIME ; 
 int /*<<< orphan*/  CS_HOLD_TIME ; 
 int /*<<< orphan*/  CS_SETUP_TIME ; 
 scalar_t__ FMC_SPI_TIMING_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct hifmc_host *host)
{
	u32 reg;

	reg = FUNC0(CS_HOLD_TIME)
		| FUNC1(CS_SETUP_TIME)
		| FUNC2(CS_DESELECT_TIME);
	FUNC3(reg, host->regbase + FMC_SPI_TIMING_CFG);
}