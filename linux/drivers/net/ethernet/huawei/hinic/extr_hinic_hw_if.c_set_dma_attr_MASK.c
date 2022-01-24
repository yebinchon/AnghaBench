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
typedef  int u8 ;
typedef  int u32 ;
struct hinic_hwif {int dummy; } ;
typedef  enum hinic_pcie_tph { ____Placeholder_hinic_pcie_tph } hinic_pcie_tph ;
typedef  enum hinic_pcie_nosnoop { ____Placeholder_hinic_pcie_nosnoop } hinic_pcie_nosnoop ;

/* Variables and functions */
 int /*<<< orphan*/  AT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SNOOPING ; 
 int /*<<< orphan*/  PH ; 
 int /*<<< orphan*/  ST ; 
 int /*<<< orphan*/  TPH_EN ; 
 int FUNC3 (struct hinic_hwif*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_hwif*,int,int) ; 

__attribute__((used)) static void FUNC5(struct hinic_hwif *hwif, u32 entry_idx,
			 u8 st, u8 at, u8 ph,
			 enum hinic_pcie_nosnoop no_snooping,
			 enum hinic_pcie_tph tph_en)
{
	u32 addr, val, dma_attr_entry;

	/* Read Modify Write */
	addr = FUNC0(entry_idx);

	val = FUNC3(hwif, addr);
	val = FUNC1(val, ST)             &
	      FUNC1(val, AT)             &
	      FUNC1(val, PH)             &
	      FUNC1(val, NO_SNOOPING)    &
	      FUNC1(val, TPH_EN);

	dma_attr_entry = FUNC2(st, ST)                     |
			 FUNC2(at, AT)                     |
			 FUNC2(ph, PH)                     |
			 FUNC2(no_snooping, NO_SNOOPING)   |
			 FUNC2(tph_en, TPH_EN);

	val |= dma_attr_entry;
	FUNC4(hwif, addr, val);
}