
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_VLANTR ;
 int MAC_VLANTR_DOVLTC_LEN ;
 int MAC_VLANTR_DOVLTC_POS ;
 int MAC_VLANTR_ERSVLM_LEN ;
 int MAC_VLANTR_ERSVLM_POS ;
 int MAC_VLANTR_ESVL_LEN ;
 int MAC_VLANTR_ESVL_POS ;
 int MAC_VLANTR_EVLRXS_LEN ;
 int MAC_VLANTR_EVLRXS_POS ;
 int MAC_VLANTR_EVLS_LEN ;
 int MAC_VLANTR_EVLS_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlgmac_enable_rx_vlan_stripping(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + MAC_VLANTR);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_EVLRXS_POS,
         MAC_VLANTR_EVLRXS_LEN, 1);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_DOVLTC_POS,
         MAC_VLANTR_DOVLTC_LEN, 1);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_ERSVLM_POS,
         MAC_VLANTR_ERSVLM_LEN, 0);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_ESVL_POS,
         MAC_VLANTR_ESVL_LEN, 0);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_EVLS_POS,
         MAC_VLANTR_EVLS_LEN, 0x3);
 writel(regval, pdata->mac_regs + MAC_VLANTR);

 return 0;
}
