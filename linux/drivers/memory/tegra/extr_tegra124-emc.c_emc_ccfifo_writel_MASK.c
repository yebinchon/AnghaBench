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
typedef  unsigned long u32 ;
struct tegra_emc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ EMC_CCFIFO_ADDR ; 
 scalar_t__ EMC_CCFIFO_DATA ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct tegra_emc *emc, u32 value,
			      unsigned long offset)
{
	FUNC0(value, emc->regs + EMC_CCFIFO_DATA);
	FUNC0(offset, emc->regs + EMC_CCFIFO_ADDR);
}