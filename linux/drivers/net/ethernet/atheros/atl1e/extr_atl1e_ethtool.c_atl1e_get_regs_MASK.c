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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct atl1e_hw {int revision_id; int device_id; } ;
struct atl1e_adapter {struct atl1e_hw hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct atl1e_hw*,scalar_t__) ; 
 int AT_REGS_LEN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_BMSR ; 
 scalar_t__ REG_CMBDISDMA_TIMER ; 
 scalar_t__ REG_GPHY_CTRL ; 
 scalar_t__ REG_IDLE_STATUS ; 
 scalar_t__ REG_IRQ_MODU_TIMER_INIT ; 
 scalar_t__ REG_MAC_CTRL ; 
 scalar_t__ REG_MAC_HALF_DUPLX_CTRL ; 
 scalar_t__ REG_MAC_IPG_IFG ; 
 scalar_t__ REG_MAC_STA_ADDR ; 
 scalar_t__ REG_MANUAL_TIMER_INIT ; 
 scalar_t__ REG_MASTER_CTRL ; 
 scalar_t__ REG_MDIO_CTRL ; 
 scalar_t__ REG_MTU ; 
 scalar_t__ REG_PCIE_DEV_MISC_CTRL ; 
 scalar_t__ REG_RX_HASH_TABLE ; 
 scalar_t__ REG_SERDES_LOCK ; 
 scalar_t__ REG_SPI_FLASH_CONFIG ; 
 scalar_t__ REG_SPI_FLASH_CTRL ; 
 scalar_t__ REG_SRAM_PKTH_ADDR ; 
 scalar_t__ REG_SRAM_RXF_ADDR ; 
 scalar_t__ REG_SRAM_RXF_LEN ; 
 scalar_t__ REG_SRAM_TCPH_ADDR ; 
 scalar_t__ REG_SRAM_TRD_ADDR ; 
 scalar_t__ REG_SRAM_TRD_LEN ; 
 scalar_t__ REG_SRAM_TXF_ADDR ; 
 scalar_t__ REG_SRAM_TXF_LEN ; 
 scalar_t__ REG_TWSI_CTRL ; 
 scalar_t__ REG_VPD_CAP ; 
 scalar_t__ REG_WOL_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 struct atl1e_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev,
			   struct ethtool_regs *regs, void *p)
{
	struct atl1e_adapter *adapter = FUNC3(netdev);
	struct atl1e_hw *hw = &adapter->hw;
	u32 *regs_buff = p;
	u16 phy_data;

	FUNC2(p, 0, AT_REGS_LEN * sizeof(u32));

	regs->version = (1 << 24) | (hw->revision_id << 16) | hw->device_id;

	regs_buff[0]  = FUNC0(hw, REG_VPD_CAP);
	regs_buff[1]  = FUNC0(hw, REG_SPI_FLASH_CTRL);
	regs_buff[2]  = FUNC0(hw, REG_SPI_FLASH_CONFIG);
	regs_buff[3]  = FUNC0(hw, REG_TWSI_CTRL);
	regs_buff[4]  = FUNC0(hw, REG_PCIE_DEV_MISC_CTRL);
	regs_buff[5]  = FUNC0(hw, REG_MASTER_CTRL);
	regs_buff[6]  = FUNC0(hw, REG_MANUAL_TIMER_INIT);
	regs_buff[7]  = FUNC0(hw, REG_IRQ_MODU_TIMER_INIT);
	regs_buff[8]  = FUNC0(hw, REG_GPHY_CTRL);
	regs_buff[9]  = FUNC0(hw, REG_CMBDISDMA_TIMER);
	regs_buff[10] = FUNC0(hw, REG_IDLE_STATUS);
	regs_buff[11] = FUNC0(hw, REG_MDIO_CTRL);
	regs_buff[12] = FUNC0(hw, REG_SERDES_LOCK);
	regs_buff[13] = FUNC0(hw, REG_MAC_CTRL);
	regs_buff[14] = FUNC0(hw, REG_MAC_IPG_IFG);
	regs_buff[15] = FUNC0(hw, REG_MAC_STA_ADDR);
	regs_buff[16] = FUNC0(hw, REG_MAC_STA_ADDR+4);
	regs_buff[17] = FUNC0(hw, REG_RX_HASH_TABLE);
	regs_buff[18] = FUNC0(hw, REG_RX_HASH_TABLE+4);
	regs_buff[19] = FUNC0(hw, REG_MAC_HALF_DUPLX_CTRL);
	regs_buff[20] = FUNC0(hw, REG_MTU);
	regs_buff[21] = FUNC0(hw, REG_WOL_CTRL);
	regs_buff[22] = FUNC0(hw, REG_SRAM_TRD_ADDR);
	regs_buff[23] = FUNC0(hw, REG_SRAM_TRD_LEN);
	regs_buff[24] = FUNC0(hw, REG_SRAM_RXF_ADDR);
	regs_buff[25] = FUNC0(hw, REG_SRAM_RXF_LEN);
	regs_buff[26] = FUNC0(hw, REG_SRAM_TXF_ADDR);
	regs_buff[27] = FUNC0(hw, REG_SRAM_TXF_LEN);
	regs_buff[28] = FUNC0(hw, REG_SRAM_TCPH_ADDR);
	regs_buff[29] = FUNC0(hw, REG_SRAM_PKTH_ADDR);

	FUNC1(hw, MII_BMCR, &phy_data);
	regs_buff[73] = (u32)phy_data;
	FUNC1(hw, MII_BMSR, &phy_data);
	regs_buff[74] = (u32)phy_data;
}