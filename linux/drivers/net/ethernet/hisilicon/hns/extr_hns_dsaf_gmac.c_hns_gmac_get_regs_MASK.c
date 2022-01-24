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
struct mac_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMC_RX_MAX_FRAME ; 
 int /*<<< orphan*/  GMAC_AN_NEG_STATE_REG ; 
 int /*<<< orphan*/  GMAC_CF_CRC_STRIP_REG ; 
 int /*<<< orphan*/  GMAC_DUPLEX_TYPE_REG ; 
 int /*<<< orphan*/  GMAC_FC_TX_TIMER_REG ; 
 int /*<<< orphan*/  GMAC_FD_FC_ADDR_HIGH_REG ; 
 int /*<<< orphan*/  GMAC_FD_FC_ADDR_LOW_REG ; 
 int /*<<< orphan*/  GMAC_FD_FC_TYPE_REG ; 
 int /*<<< orphan*/  GMAC_IPG_TX_TIMER_REG ; 
 int /*<<< orphan*/  GMAC_LD_LINK_COUNTER_REG ; 
 int /*<<< orphan*/  GMAC_LINE_LOOP_BACK_REG ; 
 int /*<<< orphan*/  GMAC_LOOP_REG ; 
 int /*<<< orphan*/  GMAC_MAC_SKIP_LEN_REG ; 
 int /*<<< orphan*/  GMAC_MAX_FRM_SIZE_REG ; 
 int /*<<< orphan*/  GMAC_MODE_CHANGE_EN_REG ; 
 int /*<<< orphan*/  GMAC_OCTETS_TRANSMITTED_BAD_REG ; 
 int /*<<< orphan*/  GMAC_OCTETS_TRANSMITTED_OK_REG ; 
 int /*<<< orphan*/  GMAC_PAUSE_EN_REG ; 
 int /*<<< orphan*/  GMAC_PAUSE_THR_REG ; 
 int /*<<< orphan*/  GMAC_PORT_EN_REG ; 
 int /*<<< orphan*/  GMAC_PORT_MODE_REG ; 
 int /*<<< orphan*/  GMAC_PTP_CONFIG_REG ; 
 int /*<<< orphan*/  GMAC_RECV_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_REC_FILT_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_RX_ALIGN_ERRORS_REG ; 
 int /*<<< orphan*/  GMAC_RX_BC_PKTS_REG ; 
 int /*<<< orphan*/  GMAC_RX_DATA_ERR_REG ; 
 int /*<<< orphan*/  GMAC_RX_FAIL_COMMA_CNT_REG ; 
 int /*<<< orphan*/  GMAC_RX_FCS_ERRORS_REG ; 
 int /*<<< orphan*/  GMAC_RX_FILT_PKT_CNT_REG ; 
 int /*<<< orphan*/  GMAC_RX_JABBER_ERRORS_REG ; 
 int /*<<< orphan*/  GMAC_RX_LENGTHFIELD_ERR_CNT_REG ; 
 int /*<<< orphan*/  GMAC_RX_LONG_ERRORS_REG ; 
 int /*<<< orphan*/  GMAC_RX_MC_PKTS_REG ; 
 int /*<<< orphan*/  GMAC_RX_OCTETS_BAD_REG ; 
 int /*<<< orphan*/  GMAC_RX_OCTETS_TOTAL_FILT_REG ; 
 int /*<<< orphan*/  GMAC_RX_OCTETS_TOTAL_OK_REG ; 
 int /*<<< orphan*/  GMAC_RX_OVERRUN_CNT_REG ; 
 int /*<<< orphan*/  GMAC_RX_PAUSE_MACCTRL_FRAM_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_1024TO1518OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_128TO255OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_1519TOMAXOCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_255TO511OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_512TO1023OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_64OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_PKTS_65TO127OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_RX_RUNT_ERR_CNT_REG ; 
 int /*<<< orphan*/  GMAC_RX_SHORT_ERR_CNT_REG ; 
 int /*<<< orphan*/  GMAC_RX_TAGGED_REG ; 
 int /*<<< orphan*/  GMAC_RX_UC_PKTS_REG ; 
 int /*<<< orphan*/  GMAC_RX_UNKNOWN_MACCTRL_FRAM_REG ; 
 int /*<<< orphan*/  GMAC_RX_VERY_LONG_ERR_CNT_REG ; 
 int /*<<< orphan*/  GMAC_SHORT_RUNTS_THR_REG ; 
 int /*<<< orphan*/  GMAC_SIXTEEN_BIT_CNTR_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_0_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_1_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_2_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_3_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_4_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_5_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_MSK_0_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_HIGH_MSK_1_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_0_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_1_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_2_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_3_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_4_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_5_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_MSK_0_REG ; 
 int /*<<< orphan*/  GMAC_STATION_ADDR_LOW_MSK_1_REG ; 
 int /*<<< orphan*/  GMAC_TRANSMIT_CONTROL_REG ; 
 int /*<<< orphan*/  GMAC_TX_BC_PKTS_REG ; 
 int /*<<< orphan*/  GMAC_TX_CRC_ERROR_REG ; 
 int /*<<< orphan*/  GMAC_TX_EXCESSIVE_LENGTH_DROP_REG ; 
 int /*<<< orphan*/  GMAC_TX_LOCAL_PAGE_REG ; 
 int /*<<< orphan*/  GMAC_TX_LOOP_PKT_PRI_REG ; 
 int /*<<< orphan*/  GMAC_TX_MC_PKTS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PAUSE_FRAMES_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_1024TO1518OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_128TO255OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_1519TOMAXOCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_255TO511OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_512TO1023OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_64OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_PKTS_65TO127OCTETS_REG ; 
 int /*<<< orphan*/  GMAC_TX_TAGGED_REG ; 
 int /*<<< orphan*/  GMAC_TX_UC_PKTS_REG ; 
 int /*<<< orphan*/  GMAC_TX_UNDERRUN_REG ; 
 int /*<<< orphan*/  GMAC_VLAN_CODE_REG ; 
 int FUNC0 (struct mac_driver*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *mac_drv, void *data)
{
	u32 *regs = data;
	int i;
	struct mac_driver *drv = (struct mac_driver *)mac_drv;

	/* base config registers */
	regs[0] = FUNC0(drv, GMAC_DUPLEX_TYPE_REG);
	regs[1] = FUNC0(drv, GMAC_FD_FC_TYPE_REG);
	regs[2] = FUNC0(drv, GMAC_FC_TX_TIMER_REG);
	regs[3] = FUNC0(drv, GMAC_FD_FC_ADDR_LOW_REG);
	regs[4] = FUNC0(drv, GMAC_FD_FC_ADDR_HIGH_REG);
	regs[5] = FUNC0(drv, GMAC_IPG_TX_TIMER_REG);
	regs[6] = FUNC0(drv, GMAC_PAUSE_THR_REG);
	regs[7] = FUNC0(drv, GMAC_MAX_FRM_SIZE_REG);
	regs[8] = FUNC0(drv, GMAC_PORT_MODE_REG);
	regs[9] = FUNC0(drv, GMAC_PORT_EN_REG);
	regs[10] = FUNC0(drv, GMAC_PAUSE_EN_REG);
	regs[11] = FUNC0(drv, GMAC_SHORT_RUNTS_THR_REG);
	regs[12] = FUNC0(drv, GMAC_AN_NEG_STATE_REG);
	regs[13] = FUNC0(drv, GMAC_TX_LOCAL_PAGE_REG);
	regs[14] = FUNC0(drv, GMAC_TRANSMIT_CONTROL_REG);
	regs[15] = FUNC0(drv, GMAC_REC_FILT_CONTROL_REG);
	regs[16] = FUNC0(drv, GMAC_PTP_CONFIG_REG);

	/* rx static registers */
	regs[17] = FUNC0(drv, GMAC_RX_OCTETS_TOTAL_OK_REG);
	regs[18] = FUNC0(drv, GMAC_RX_OCTETS_BAD_REG);
	regs[19] = FUNC0(drv, GMAC_RX_UC_PKTS_REG);
	regs[20] = FUNC0(drv, GMAC_RX_MC_PKTS_REG);
	regs[21] = FUNC0(drv, GMAC_RX_BC_PKTS_REG);
	regs[22] = FUNC0(drv, GMAC_RX_PKTS_64OCTETS_REG);
	regs[23] = FUNC0(drv, GMAC_RX_PKTS_65TO127OCTETS_REG);
	regs[24] = FUNC0(drv, GMAC_RX_PKTS_128TO255OCTETS_REG);
	regs[25] = FUNC0(drv, GMAC_RX_PKTS_255TO511OCTETS_REG);
	regs[26] = FUNC0(drv, GMAC_RX_PKTS_512TO1023OCTETS_REG);
	regs[27] = FUNC0(drv, GMAC_RX_PKTS_1024TO1518OCTETS_REG);
	regs[28] = FUNC0(drv, GMAC_RX_PKTS_1519TOMAXOCTETS_REG);
	regs[29] = FUNC0(drv, GMAC_RX_FCS_ERRORS_REG);
	regs[30] = FUNC0(drv, GMAC_RX_TAGGED_REG);
	regs[31] = FUNC0(drv, GMAC_RX_DATA_ERR_REG);
	regs[32] = FUNC0(drv, GMAC_RX_ALIGN_ERRORS_REG);
	regs[33] = FUNC0(drv, GMAC_RX_LONG_ERRORS_REG);
	regs[34] = FUNC0(drv, GMAC_RX_JABBER_ERRORS_REG);
	regs[35] = FUNC0(drv, GMAC_RX_PAUSE_MACCTRL_FRAM_REG);
	regs[36] = FUNC0(drv, GMAC_RX_UNKNOWN_MACCTRL_FRAM_REG);
	regs[37] = FUNC0(drv, GMAC_RX_VERY_LONG_ERR_CNT_REG);
	regs[38] = FUNC0(drv, GMAC_RX_RUNT_ERR_CNT_REG);
	regs[39] = FUNC0(drv, GMAC_RX_SHORT_ERR_CNT_REG);
	regs[40] = FUNC0(drv, GMAC_RX_FILT_PKT_CNT_REG);
	regs[41] = FUNC0(drv, GMAC_RX_OCTETS_TOTAL_FILT_REG);

	/* tx static registers */
	regs[42] = FUNC0(drv, GMAC_OCTETS_TRANSMITTED_OK_REG);
	regs[43] = FUNC0(drv, GMAC_OCTETS_TRANSMITTED_BAD_REG);
	regs[44] = FUNC0(drv, GMAC_TX_UC_PKTS_REG);
	regs[45] = FUNC0(drv, GMAC_TX_MC_PKTS_REG);
	regs[46] = FUNC0(drv, GMAC_TX_BC_PKTS_REG);
	regs[47] = FUNC0(drv, GMAC_TX_PKTS_64OCTETS_REG);
	regs[48] = FUNC0(drv, GMAC_TX_PKTS_65TO127OCTETS_REG);
	regs[49] = FUNC0(drv, GMAC_TX_PKTS_128TO255OCTETS_REG);
	regs[50] = FUNC0(drv, GMAC_TX_PKTS_255TO511OCTETS_REG);
	regs[51] = FUNC0(drv, GMAC_TX_PKTS_512TO1023OCTETS_REG);
	regs[52] = FUNC0(drv, GMAC_TX_PKTS_1024TO1518OCTETS_REG);
	regs[53] = FUNC0(drv, GMAC_TX_PKTS_1519TOMAXOCTETS_REG);
	regs[54] = FUNC0(drv, GMAC_TX_EXCESSIVE_LENGTH_DROP_REG);
	regs[55] = FUNC0(drv, GMAC_TX_UNDERRUN_REG);
	regs[56] = FUNC0(drv, GMAC_TX_TAGGED_REG);
	regs[57] = FUNC0(drv, GMAC_TX_CRC_ERROR_REG);
	regs[58] = FUNC0(drv, GMAC_TX_PAUSE_FRAMES_REG);

	regs[59] = FUNC0(drv, GAMC_RX_MAX_FRAME);
	regs[60] = FUNC0(drv, GMAC_LINE_LOOP_BACK_REG);
	regs[61] = FUNC0(drv, GMAC_CF_CRC_STRIP_REG);
	regs[62] = FUNC0(drv, GMAC_MODE_CHANGE_EN_REG);
	regs[63] = FUNC0(drv, GMAC_SIXTEEN_BIT_CNTR_REG);
	regs[64] = FUNC0(drv, GMAC_LD_LINK_COUNTER_REG);
	regs[65] = FUNC0(drv, GMAC_LOOP_REG);
	regs[66] = FUNC0(drv, GMAC_RECV_CONTROL_REG);
	regs[67] = FUNC0(drv, GMAC_VLAN_CODE_REG);
	regs[68] = FUNC0(drv, GMAC_RX_OVERRUN_CNT_REG);
	regs[69] = FUNC0(drv, GMAC_RX_LENGTHFIELD_ERR_CNT_REG);
	regs[70] = FUNC0(drv, GMAC_RX_FAIL_COMMA_CNT_REG);

	regs[71] = FUNC0(drv, GMAC_STATION_ADDR_LOW_0_REG);
	regs[72] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_0_REG);
	regs[73] = FUNC0(drv, GMAC_STATION_ADDR_LOW_1_REG);
	regs[74] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_1_REG);
	regs[75] = FUNC0(drv, GMAC_STATION_ADDR_LOW_2_REG);
	regs[76] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_2_REG);
	regs[77] = FUNC0(drv, GMAC_STATION_ADDR_LOW_3_REG);
	regs[78] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_3_REG);
	regs[79] = FUNC0(drv, GMAC_STATION_ADDR_LOW_4_REG);
	regs[80] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_4_REG);
	regs[81] = FUNC0(drv, GMAC_STATION_ADDR_LOW_5_REG);
	regs[82] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_5_REG);
	regs[83] = FUNC0(drv, GMAC_STATION_ADDR_LOW_MSK_0_REG);
	regs[84] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_MSK_0_REG);
	regs[85] = FUNC0(drv, GMAC_STATION_ADDR_LOW_MSK_1_REG);
	regs[86] = FUNC0(drv, GMAC_STATION_ADDR_HIGH_MSK_1_REG);
	regs[87] = FUNC0(drv, GMAC_MAC_SKIP_LEN_REG);
	regs[88] = FUNC0(drv, GMAC_TX_LOOP_PKT_PRI_REG);

	/* mark end of mac regs */
	for (i = 89; i < 96; i++)
		regs[i] = 0xaaaaaaaa;
}