
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int CSR_ECM_CFG_0_ADDR ;
 int MULTI_DPF_AUTOCTRL ;
 int PAUSE_XON_EN ;
 int xgene_enet_rd_mcx_csr (struct xgene_enet_pdata*,int ,int*) ;
 int xgene_enet_wr_mcx_csr (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static void xgene_gmac_enable_tx_pause(struct xgene_enet_pdata *pdata,
           bool enable)
{
 u32 data;

 xgene_enet_rd_mcx_csr(pdata, CSR_ECM_CFG_0_ADDR, &data);

 if (enable)
  data |= MULTI_DPF_AUTOCTRL | PAUSE_XON_EN;
 else
  data &= ~(MULTI_DPF_AUTOCTRL | PAUSE_XON_EN);

 xgene_enet_wr_mcx_csr(pdata, CSR_ECM_CFG_0_ADDR, data);
}
