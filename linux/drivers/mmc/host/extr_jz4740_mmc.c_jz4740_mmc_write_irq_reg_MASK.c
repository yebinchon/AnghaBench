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
typedef  int /*<<< orphan*/  uint32_t ;
struct jz4740_mmc_host {scalar_t__ version; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ JZ_MMC_JZ4780 ; 
 scalar_t__ JZ_REG_MMC_IREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct jz4740_mmc_host *host,
				     uint32_t val)
{
	if (host->version >= JZ_MMC_JZ4780)
		FUNC0(val, host->base + JZ_REG_MMC_IREG);
	else
		FUNC1(val, host->base + JZ_REG_MMC_IREG);
}