
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int tc_cnt; } ;
struct xlgmac_pdata {scalar_t__ mac_regs; TYPE_1__ hw_feat; } ;


 int MTL_ETSALG_WRR ;
 scalar_t__ MTL_OMR ;
 int MTL_OMR_ETSALG_LEN ;
 int MTL_OMR_ETSALG_POS ;
 int MTL_OMR_RAA_LEN ;
 int MTL_OMR_RAA_POS ;
 int MTL_RAA_SP ;
 int MTL_TC_ETSCR ;
 int MTL_TC_ETSCR_TSA_LEN ;
 int MTL_TC_ETSCR_TSA_POS ;
 int MTL_TC_QWR ;
 int MTL_TC_QWR_QW_LEN ;
 int MTL_TC_QWR_QW_POS ;
 int MTL_TSA_ETS ;
 scalar_t__ XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlgmac_config_mtl_mode(struct xlgmac_pdata *pdata)
{
 unsigned int i;
 u32 regval;


 regval = readl(pdata->mac_regs + MTL_OMR);
 regval = XLGMAC_SET_REG_BITS(regval, MTL_OMR_ETSALG_POS,
         MTL_OMR_ETSALG_LEN, MTL_ETSALG_WRR);
 writel(regval, pdata->mac_regs + MTL_OMR);


 for (i = 0; i < pdata->hw_feat.tc_cnt; i++) {
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_TC_ETSCR));
  regval = XLGMAC_SET_REG_BITS(regval, MTL_TC_ETSCR_TSA_POS,
          MTL_TC_ETSCR_TSA_LEN, MTL_TSA_ETS);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_TC_ETSCR));

  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_TC_QWR));
  regval = XLGMAC_SET_REG_BITS(regval, MTL_TC_QWR_QW_POS,
          MTL_TC_QWR_QW_LEN, 1);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_TC_QWR));
 }


 regval = readl(pdata->mac_regs + MTL_OMR);
 regval = XLGMAC_SET_REG_BITS(regval, MTL_OMR_RAA_POS,
         MTL_OMR_RAA_LEN, MTL_RAA_SP);
 writel(regval, pdata->mac_regs + MTL_OMR);
}
