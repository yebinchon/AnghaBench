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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {size_t len; scalar_t__ version; } ;
struct axienet_local {int dummy; } ;

/* Variables and functions */
 int AXIENET_REGS_N ; 
 int /*<<< orphan*/  XAE_AF0_OFFSET ; 
 int /*<<< orphan*/  XAE_AF1_OFFSET ; 
 int /*<<< orphan*/  XAE_EMMC_OFFSET ; 
 int /*<<< orphan*/  XAE_FCC_OFFSET ; 
 int /*<<< orphan*/  XAE_FMI_OFFSET ; 
 int /*<<< orphan*/  XAE_IE_OFFSET ; 
 int /*<<< orphan*/  XAE_IFGP_OFFSET ; 
 int /*<<< orphan*/  XAE_IP_OFFSET ; 
 int /*<<< orphan*/  XAE_IS_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MCR_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MC_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MIC_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MIE_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MIP_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MIS_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MRD_OFFSET ; 
 int /*<<< orphan*/  XAE_MDIO_MWD_OFFSET ; 
 int /*<<< orphan*/  XAE_PHYC_OFFSET ; 
 int /*<<< orphan*/  XAE_PPST_OFFSET ; 
 int /*<<< orphan*/  XAE_RAF_OFFSET ; 
 int /*<<< orphan*/  XAE_RCW0_OFFSET ; 
 int /*<<< orphan*/  XAE_RCW1_OFFSET ; 
 int /*<<< orphan*/  XAE_RTAG_OFFSET ; 
 int /*<<< orphan*/  XAE_TC_OFFSET ; 
 int /*<<< orphan*/  XAE_TPF_OFFSET ; 
 int /*<<< orphan*/  XAE_TPID0_OFFSET ; 
 int /*<<< orphan*/  XAE_TPID1_OFFSET ; 
 int /*<<< orphan*/  XAE_TTAG_OFFSET ; 
 int /*<<< orphan*/  XAE_UAW0_OFFSET ; 
 int /*<<< orphan*/  XAE_UAW1_OFFSET ; 
 int /*<<< orphan*/  XAE_UAWL_OFFSET ; 
 int /*<<< orphan*/  XAE_UAWU_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_CDESC_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_SR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_RX_TDESC_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_CDESC_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_SR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_TDESC_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 struct axienet_local* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev,
				      struct ethtool_regs *regs, void *ret)
{
	u32 *data = (u32 *) ret;
	size_t len = sizeof(u32) * AXIENET_REGS_N;
	struct axienet_local *lp = FUNC3(ndev);

	regs->version = 0;
	regs->len = len;

	FUNC2(data, 0, len);
	data[0] = FUNC1(lp, XAE_RAF_OFFSET);
	data[1] = FUNC1(lp, XAE_TPF_OFFSET);
	data[2] = FUNC1(lp, XAE_IFGP_OFFSET);
	data[3] = FUNC1(lp, XAE_IS_OFFSET);
	data[4] = FUNC1(lp, XAE_IP_OFFSET);
	data[5] = FUNC1(lp, XAE_IE_OFFSET);
	data[6] = FUNC1(lp, XAE_TTAG_OFFSET);
	data[7] = FUNC1(lp, XAE_RTAG_OFFSET);
	data[8] = FUNC1(lp, XAE_UAWL_OFFSET);
	data[9] = FUNC1(lp, XAE_UAWU_OFFSET);
	data[10] = FUNC1(lp, XAE_TPID0_OFFSET);
	data[11] = FUNC1(lp, XAE_TPID1_OFFSET);
	data[12] = FUNC1(lp, XAE_PPST_OFFSET);
	data[13] = FUNC1(lp, XAE_RCW0_OFFSET);
	data[14] = FUNC1(lp, XAE_RCW1_OFFSET);
	data[15] = FUNC1(lp, XAE_TC_OFFSET);
	data[16] = FUNC1(lp, XAE_FCC_OFFSET);
	data[17] = FUNC1(lp, XAE_EMMC_OFFSET);
	data[18] = FUNC1(lp, XAE_PHYC_OFFSET);
	data[19] = FUNC1(lp, XAE_MDIO_MC_OFFSET);
	data[20] = FUNC1(lp, XAE_MDIO_MCR_OFFSET);
	data[21] = FUNC1(lp, XAE_MDIO_MWD_OFFSET);
	data[22] = FUNC1(lp, XAE_MDIO_MRD_OFFSET);
	data[23] = FUNC1(lp, XAE_MDIO_MIS_OFFSET);
	data[24] = FUNC1(lp, XAE_MDIO_MIP_OFFSET);
	data[25] = FUNC1(lp, XAE_MDIO_MIE_OFFSET);
	data[26] = FUNC1(lp, XAE_MDIO_MIC_OFFSET);
	data[27] = FUNC1(lp, XAE_UAW0_OFFSET);
	data[28] = FUNC1(lp, XAE_UAW1_OFFSET);
	data[29] = FUNC1(lp, XAE_FMI_OFFSET);
	data[30] = FUNC1(lp, XAE_AF0_OFFSET);
	data[31] = FUNC1(lp, XAE_AF1_OFFSET);
	data[32] = FUNC0(lp, XAXIDMA_TX_CR_OFFSET);
	data[33] = FUNC0(lp, XAXIDMA_TX_SR_OFFSET);
	data[34] = FUNC0(lp, XAXIDMA_TX_CDESC_OFFSET);
	data[35] = FUNC0(lp, XAXIDMA_TX_TDESC_OFFSET);
	data[36] = FUNC0(lp, XAXIDMA_RX_CR_OFFSET);
	data[37] = FUNC0(lp, XAXIDMA_RX_SR_OFFSET);
	data[38] = FUNC0(lp, XAXIDMA_RX_CDESC_OFFSET);
	data[39] = FUNC0(lp, XAXIDMA_RX_TDESC_OFFSET);
}