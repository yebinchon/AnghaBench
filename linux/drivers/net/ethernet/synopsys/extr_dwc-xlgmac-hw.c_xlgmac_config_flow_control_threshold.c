
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {unsigned int rx_q_count; } ;


 int MTL_Q_RQFCR ;
 int MTL_Q_RQFCR_RFA_LEN ;
 int MTL_Q_RQFCR_RFA_POS ;
 int MTL_Q_RQFCR_RFD_LEN ;
 int MTL_Q_RQFCR_RFD_POS ;
 int XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void xlgmac_config_flow_control_threshold(struct xlgmac_pdata *pdata)
{
 unsigned int i;
 u32 regval;

 for (i = 0; i < pdata->rx_q_count; i++) {
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_RQFCR));

  regval = XLGMAC_SET_REG_BITS(regval, MTL_Q_RQFCR_RFA_POS,
          MTL_Q_RQFCR_RFA_LEN, 2);

  regval = XLGMAC_SET_REG_BITS(regval, MTL_Q_RQFCR_RFD_POS,
          MTL_Q_RQFCR_RFD_LEN, 4);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_Q_RQFCR));
 }
}
