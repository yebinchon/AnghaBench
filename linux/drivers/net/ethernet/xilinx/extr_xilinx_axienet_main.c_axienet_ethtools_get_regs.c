
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {size_t len; scalar_t__ version; } ;
struct axienet_local {int dummy; } ;


 int AXIENET_REGS_N ;
 int XAE_AF0_OFFSET ;
 int XAE_AF1_OFFSET ;
 int XAE_EMMC_OFFSET ;
 int XAE_FCC_OFFSET ;
 int XAE_FMI_OFFSET ;
 int XAE_IE_OFFSET ;
 int XAE_IFGP_OFFSET ;
 int XAE_IP_OFFSET ;
 int XAE_IS_OFFSET ;
 int XAE_MDIO_MCR_OFFSET ;
 int XAE_MDIO_MC_OFFSET ;
 int XAE_MDIO_MIC_OFFSET ;
 int XAE_MDIO_MIE_OFFSET ;
 int XAE_MDIO_MIP_OFFSET ;
 int XAE_MDIO_MIS_OFFSET ;
 int XAE_MDIO_MRD_OFFSET ;
 int XAE_MDIO_MWD_OFFSET ;
 int XAE_PHYC_OFFSET ;
 int XAE_PPST_OFFSET ;
 int XAE_RAF_OFFSET ;
 int XAE_RCW0_OFFSET ;
 int XAE_RCW1_OFFSET ;
 int XAE_RTAG_OFFSET ;
 int XAE_TC_OFFSET ;
 int XAE_TPF_OFFSET ;
 int XAE_TPID0_OFFSET ;
 int XAE_TPID1_OFFSET ;
 int XAE_TTAG_OFFSET ;
 int XAE_UAW0_OFFSET ;
 int XAE_UAW1_OFFSET ;
 int XAE_UAWL_OFFSET ;
 int XAE_UAWU_OFFSET ;
 int XAXIDMA_RX_CDESC_OFFSET ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_RX_SR_OFFSET ;
 int XAXIDMA_RX_TDESC_OFFSET ;
 int XAXIDMA_TX_CDESC_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int XAXIDMA_TX_SR_OFFSET ;
 int XAXIDMA_TX_TDESC_OFFSET ;
 int axienet_dma_in32 (struct axienet_local*,int ) ;
 int axienet_ior (struct axienet_local*,int ) ;
 int memset (int *,int ,size_t) ;
 struct axienet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void axienet_ethtools_get_regs(struct net_device *ndev,
          struct ethtool_regs *regs, void *ret)
{
 u32 *data = (u32 *) ret;
 size_t len = sizeof(u32) * AXIENET_REGS_N;
 struct axienet_local *lp = netdev_priv(ndev);

 regs->version = 0;
 regs->len = len;

 memset(data, 0, len);
 data[0] = axienet_ior(lp, XAE_RAF_OFFSET);
 data[1] = axienet_ior(lp, XAE_TPF_OFFSET);
 data[2] = axienet_ior(lp, XAE_IFGP_OFFSET);
 data[3] = axienet_ior(lp, XAE_IS_OFFSET);
 data[4] = axienet_ior(lp, XAE_IP_OFFSET);
 data[5] = axienet_ior(lp, XAE_IE_OFFSET);
 data[6] = axienet_ior(lp, XAE_TTAG_OFFSET);
 data[7] = axienet_ior(lp, XAE_RTAG_OFFSET);
 data[8] = axienet_ior(lp, XAE_UAWL_OFFSET);
 data[9] = axienet_ior(lp, XAE_UAWU_OFFSET);
 data[10] = axienet_ior(lp, XAE_TPID0_OFFSET);
 data[11] = axienet_ior(lp, XAE_TPID1_OFFSET);
 data[12] = axienet_ior(lp, XAE_PPST_OFFSET);
 data[13] = axienet_ior(lp, XAE_RCW0_OFFSET);
 data[14] = axienet_ior(lp, XAE_RCW1_OFFSET);
 data[15] = axienet_ior(lp, XAE_TC_OFFSET);
 data[16] = axienet_ior(lp, XAE_FCC_OFFSET);
 data[17] = axienet_ior(lp, XAE_EMMC_OFFSET);
 data[18] = axienet_ior(lp, XAE_PHYC_OFFSET);
 data[19] = axienet_ior(lp, XAE_MDIO_MC_OFFSET);
 data[20] = axienet_ior(lp, XAE_MDIO_MCR_OFFSET);
 data[21] = axienet_ior(lp, XAE_MDIO_MWD_OFFSET);
 data[22] = axienet_ior(lp, XAE_MDIO_MRD_OFFSET);
 data[23] = axienet_ior(lp, XAE_MDIO_MIS_OFFSET);
 data[24] = axienet_ior(lp, XAE_MDIO_MIP_OFFSET);
 data[25] = axienet_ior(lp, XAE_MDIO_MIE_OFFSET);
 data[26] = axienet_ior(lp, XAE_MDIO_MIC_OFFSET);
 data[27] = axienet_ior(lp, XAE_UAW0_OFFSET);
 data[28] = axienet_ior(lp, XAE_UAW1_OFFSET);
 data[29] = axienet_ior(lp, XAE_FMI_OFFSET);
 data[30] = axienet_ior(lp, XAE_AF0_OFFSET);
 data[31] = axienet_ior(lp, XAE_AF1_OFFSET);
 data[32] = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);
 data[33] = axienet_dma_in32(lp, XAXIDMA_TX_SR_OFFSET);
 data[34] = axienet_dma_in32(lp, XAXIDMA_TX_CDESC_OFFSET);
 data[35] = axienet_dma_in32(lp, XAXIDMA_TX_TDESC_OFFSET);
 data[36] = axienet_dma_in32(lp, XAXIDMA_RX_CR_OFFSET);
 data[37] = axienet_dma_in32(lp, XAXIDMA_RX_SR_OFFSET);
 data[38] = axienet_dma_in32(lp, XAXIDMA_RX_CDESC_OFFSET);
 data[39] = axienet_dma_in32(lp, XAXIDMA_RX_TDESC_OFFSET);
}
