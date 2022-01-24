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
struct c8sectpfe_hw {void* num_tp; void* num_ram; void* num_ccsc; void* num_tsout; void* num_swts; void* num_mib; void* num_ib; } ;
struct c8sectpfei {int /*<<< orphan*/  dev; scalar_t__ io; struct c8sectpfe_hw hw_stats; } ;

/* Variables and functions */
 scalar_t__ SYS_CFG_NUM_CCSC ; 
 scalar_t__ SYS_CFG_NUM_IB ; 
 scalar_t__ SYS_CFG_NUM_MIB ; 
 scalar_t__ SYS_CFG_NUM_RAM ; 
 scalar_t__ SYS_CFG_NUM_SWTS ; 
 scalar_t__ SYS_CFG_NUM_TP ; 
 scalar_t__ SYS_CFG_NUM_TSOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct c8sectpfei *fei)
{
	struct c8sectpfe_hw *hw = &fei->hw_stats;

	hw->num_ib = FUNC1(fei->io + SYS_CFG_NUM_IB);
	hw->num_mib = FUNC1(fei->io + SYS_CFG_NUM_MIB);
	hw->num_swts = FUNC1(fei->io + SYS_CFG_NUM_SWTS);
	hw->num_tsout = FUNC1(fei->io + SYS_CFG_NUM_TSOUT);
	hw->num_ccsc = FUNC1(fei->io + SYS_CFG_NUM_CCSC);
	hw->num_ram = FUNC1(fei->io + SYS_CFG_NUM_RAM);
	hw->num_tp = FUNC1(fei->io + SYS_CFG_NUM_TP);

	FUNC0(fei->dev, "C8SECTPFE hw supports the following:\n");
	FUNC0(fei->dev, "Input Blocks: %d\n", hw->num_ib);
	FUNC0(fei->dev, "Merged Input Blocks: %d\n", hw->num_mib);
	FUNC0(fei->dev, "Software Transport Stream Inputs: %d\n"
				, hw->num_swts);
	FUNC0(fei->dev, "Transport Stream Output: %d\n", hw->num_tsout);
	FUNC0(fei->dev, "Cable Card Converter: %d\n", hw->num_ccsc);
	FUNC0(fei->dev, "RAMs supported by C8SECTPFE: %d\n", hw->num_ram);
	FUNC0(fei->dev, "Tango TPs supported by C8SECTPFE: %d\n"
			, hw->num_tp);
}