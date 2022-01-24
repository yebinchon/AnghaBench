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
struct atl1_hw {scalar_t__ hw_addr; } ;

/* Variables and functions */
 scalar_t__ REG_PCIE_CAP_LIST ; 
 scalar_t__ REG_SPI_FLASH_CTRL ; 
 int SPI_FLASH_CTRL_EN_VPD ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct atl1_hw *hw)
{
	u32 value;
	value = FUNC1(hw->hw_addr + REG_SPI_FLASH_CTRL);
	if (value & SPI_FLASH_CTRL_EN_VPD) {
		value &= ~SPI_FLASH_CTRL_EN_VPD;
		FUNC2(value, hw->hw_addr + REG_SPI_FLASH_CTRL);
	}

	value = FUNC0(hw->hw_addr + REG_PCIE_CAP_LIST);
	return ((value & 0xFF00) == 0x6C00) ? 0 : 1;
}