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
typedef  int uint32_t ;
struct jz4740_mmc_host {scalar_t__ base; } ;

/* Variables and functions */
 int JZ_MMC_STATUS_IS_RESETTING ; 
 int /*<<< orphan*/  JZ_MMC_STRPCL_RESET ; 
 scalar_t__ JZ_REG_MMC_STATUS ; 
 scalar_t__ JZ_REG_MMC_STRPCL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct jz4740_mmc_host *host)
{
	uint32_t status;
	unsigned int timeout = 1000;

	FUNC2(JZ_MMC_STRPCL_RESET, host->base + JZ_REG_MMC_STRPCL);
	FUNC1(10);
	do {
		status = FUNC0(host->base + JZ_REG_MMC_STATUS);
	} while (status & JZ_MMC_STATUS_IS_RESETTING && --timeout);
}