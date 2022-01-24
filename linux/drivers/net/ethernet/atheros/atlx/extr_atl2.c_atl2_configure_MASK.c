#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct atl2_hw {int /*<<< orphan*/  fc_rxd_lo; int /*<<< orphan*/  fc_rxd_hi; scalar_t__ jam_ipg; scalar_t__ max_retry; scalar_t__ lcol; scalar_t__ ipgr2; scalar_t__ ipgr1; scalar_t__ min_ifg; scalar_t__ ipgt; scalar_t__* mac_addr; } ;
struct atl2_adapter {int ring_dma; int txd_dma; int txs_dma; int rxd_dma; int txd_ring_size; struct atl2_hw hw; scalar_t__ rxd_read_ptr; scalar_t__ txd_write_ptr; TYPE_1__* netdev; int /*<<< orphan*/  ict; int /*<<< orphan*/  imt; scalar_t__ rxd_ring_size; scalar_t__ txs_ring_size; } ;
struct TYPE_2__ {int mtu; } ;

/* Variables and functions */
 int FUNC0 (struct atl2_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct atl2_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct atl2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct atl2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAR_EN ; 
 int /*<<< orphan*/  DMAW_EN ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int ISR_PHY_LINKDOWN ; 
 int MAC_HALF_DUPLX_CTRL_ABEBT_SHIFT ; 
 int MAC_HALF_DUPLX_CTRL_EXC_DEF_EN ; 
 int MAC_HALF_DUPLX_CTRL_JAMIPG_MASK ; 
 int MAC_HALF_DUPLX_CTRL_JAMIPG_SHIFT ; 
 int MAC_HALF_DUPLX_CTRL_LCOL_MASK ; 
 int MAC_HALF_DUPLX_CTRL_RETRY_MASK ; 
 int MAC_HALF_DUPLX_CTRL_RETRY_SHIFT ; 
 int MAC_IPG_IFG_IPGR1_MASK ; 
 int MAC_IPG_IFG_IPGR1_SHIFT ; 
 int MAC_IPG_IFG_IPGR2_MASK ; 
 int MAC_IPG_IFG_IPGR2_SHIFT ; 
 int MAC_IPG_IFG_IPGT_MASK ; 
 int MAC_IPG_IFG_IPGT_SHIFT ; 
 int MAC_IPG_IFG_MIFG_MASK ; 
 int MAC_IPG_IFG_MIFG_SHIFT ; 
 int MASTER_CTRL_ITIMER_EN ; 
 int /*<<< orphan*/  REG_CMBDISDMA_TIMER ; 
 scalar_t__ REG_DESC_BASE_ADDR_HI ; 
 int /*<<< orphan*/  REG_DMAR ; 
 int /*<<< orphan*/  REG_DMAW ; 
 int /*<<< orphan*/  REG_IRQ_MODU_TIMER_INIT ; 
 scalar_t__ REG_ISR ; 
 scalar_t__ REG_MAC_HALF_DUPLX_CTRL ; 
 scalar_t__ REG_MAC_IPG_IFG ; 
 scalar_t__ REG_MAC_STA_ADDR ; 
 scalar_t__ REG_MASTER_CTRL ; 
 int /*<<< orphan*/  REG_MB_RXD_RD_IDX ; 
 int /*<<< orphan*/  REG_MB_TXD_WR_IDX ; 
 scalar_t__ REG_MTU ; 
 int /*<<< orphan*/  REG_PAUSE_OFF_TH ; 
 int /*<<< orphan*/  REG_PAUSE_ON_TH ; 
 scalar_t__ REG_RXD_BASE_ADDR_LO ; 
 int /*<<< orphan*/  REG_RXD_BUF_NUM ; 
 scalar_t__ REG_TXD_BASE_ADDR_LO ; 
 int /*<<< orphan*/  REG_TXD_MEM_SIZE ; 
 scalar_t__ REG_TXS_BASE_ADDR_LO ; 
 int /*<<< orphan*/  REG_TXS_MEM_SIZE ; 
 scalar_t__ REG_TX_CUT_THRESH ; 
 int VLAN_HLEN ; 

__attribute__((used)) static int FUNC4(struct atl2_adapter *adapter)
{
	struct atl2_hw *hw = &adapter->hw;
	u32 value;

	/* clear interrupt status */
	FUNC1(&adapter->hw, REG_ISR, 0xffffffff);

	/* set MAC Address */
	value = (((u32)hw->mac_addr[2]) << 24) |
		(((u32)hw->mac_addr[3]) << 16) |
		(((u32)hw->mac_addr[4]) << 8) |
		(((u32)hw->mac_addr[5]));
	FUNC1(hw, REG_MAC_STA_ADDR, value);
	value = (((u32)hw->mac_addr[0]) << 8) |
		(((u32)hw->mac_addr[1]));
	FUNC1(hw, (REG_MAC_STA_ADDR+4), value);

	/* HI base address */
	FUNC1(hw, REG_DESC_BASE_ADDR_HI,
		(u32)((adapter->ring_dma & 0xffffffff00000000ULL) >> 32));

	/* LO base address */
	FUNC1(hw, REG_TXD_BASE_ADDR_LO,
		(u32)(adapter->txd_dma & 0x00000000ffffffffULL));
	FUNC1(hw, REG_TXS_BASE_ADDR_LO,
		(u32)(adapter->txs_dma & 0x00000000ffffffffULL));
	FUNC1(hw, REG_RXD_BASE_ADDR_LO,
		(u32)(adapter->rxd_dma & 0x00000000ffffffffULL));

	/* element count */
	FUNC3(hw, REG_TXD_MEM_SIZE, (u16)(adapter->txd_ring_size/4));
	FUNC3(hw, REG_TXS_MEM_SIZE, (u16)adapter->txs_ring_size);
	FUNC3(hw, REG_RXD_BUF_NUM,  (u16)adapter->rxd_ring_size);

	/* config Internal SRAM */
/*
    ATL2_WRITE_REGW(hw, REG_SRAM_TXRAM_END, sram_tx_end);
    ATL2_WRITE_REGW(hw, REG_SRAM_TXRAM_END, sram_rx_end);
*/

	/* config IPG/IFG */
	value = (((u32)hw->ipgt & MAC_IPG_IFG_IPGT_MASK) <<
		MAC_IPG_IFG_IPGT_SHIFT) |
		(((u32)hw->min_ifg & MAC_IPG_IFG_MIFG_MASK) <<
		MAC_IPG_IFG_MIFG_SHIFT) |
		(((u32)hw->ipgr1 & MAC_IPG_IFG_IPGR1_MASK) <<
		MAC_IPG_IFG_IPGR1_SHIFT)|
		(((u32)hw->ipgr2 & MAC_IPG_IFG_IPGR2_MASK) <<
		MAC_IPG_IFG_IPGR2_SHIFT);
	FUNC1(hw, REG_MAC_IPG_IFG, value);

	/* config  Half-Duplex Control */
	value = ((u32)hw->lcol & MAC_HALF_DUPLX_CTRL_LCOL_MASK) |
		(((u32)hw->max_retry & MAC_HALF_DUPLX_CTRL_RETRY_MASK) <<
		MAC_HALF_DUPLX_CTRL_RETRY_SHIFT) |
		MAC_HALF_DUPLX_CTRL_EXC_DEF_EN |
		(0xa << MAC_HALF_DUPLX_CTRL_ABEBT_SHIFT) |
		(((u32)hw->jam_ipg & MAC_HALF_DUPLX_CTRL_JAMIPG_MASK) <<
		MAC_HALF_DUPLX_CTRL_JAMIPG_SHIFT);
	FUNC1(hw, REG_MAC_HALF_DUPLX_CTRL, value);

	/* set Interrupt Moderator Timer */
	FUNC3(hw, REG_IRQ_MODU_TIMER_INIT, adapter->imt);
	FUNC1(hw, REG_MASTER_CTRL, MASTER_CTRL_ITIMER_EN);

	/* set Interrupt Clear Timer */
	FUNC3(hw, REG_CMBDISDMA_TIMER, adapter->ict);

	/* set MTU */
	FUNC1(hw, REG_MTU, adapter->netdev->mtu +
		ETH_HLEN + VLAN_HLEN + ETH_FCS_LEN);

	/* 1590 */
	FUNC1(hw, REG_TX_CUT_THRESH, 0x177);

	/* flow control */
	FUNC3(hw, REG_PAUSE_ON_TH, hw->fc_rxd_hi);
	FUNC3(hw, REG_PAUSE_OFF_TH, hw->fc_rxd_lo);

	/* Init mailbox */
	FUNC3(hw, REG_MB_TXD_WR_IDX, (u16)adapter->txd_write_ptr);
	FUNC3(hw, REG_MB_RXD_RD_IDX, (u16)adapter->rxd_read_ptr);

	/* enable DMA read/write */
	FUNC2(hw, REG_DMAR, DMAR_EN);
	FUNC2(hw, REG_DMAW, DMAW_EN);

	value = FUNC0(&adapter->hw, REG_ISR);
	if ((value & ISR_PHY_LINKDOWN) != 0)
		value = 1; /* config failed */
	else
		value = 0;

	/* clear all interrupt status */
	FUNC1(&adapter->hw, REG_ISR, 0x3fffffff);
	FUNC1(&adapter->hw, REG_ISR, 0);
	return value;
}