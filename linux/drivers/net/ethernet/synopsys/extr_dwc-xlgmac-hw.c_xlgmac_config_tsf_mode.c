
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {unsigned int tx_q_count; } ;


 int MTL_Q_TQOMR ;
 int MTL_Q_TQOMR_TSF_LEN ;
 int MTL_Q_TQOMR_TSF_POS ;
 int XLGMAC_MTL_REG (struct xlgmac_pdata*,unsigned int,int ) ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,unsigned int) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static int xlgmac_config_tsf_mode(struct xlgmac_pdata *pdata,
      unsigned int val)
{
 unsigned int i;
 u32 regval;

 for (i = 0; i < pdata->tx_q_count; i++) {
  regval = readl(XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
  regval = XLGMAC_SET_REG_BITS(regval, MTL_Q_TQOMR_TSF_POS,
          MTL_Q_TQOMR_TSF_LEN, val);
  writel(regval, XLGMAC_MTL_REG(pdata, i, MTL_Q_TQOMR));
 }

 return 0;
}
