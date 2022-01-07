
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {scalar_t__ mac_regs; } ;


 scalar_t__ MAC_PFR ;
 int MAC_PFR_VTFE_LEN ;
 int MAC_PFR_VTFE_POS ;
 scalar_t__ MAC_VLANTR ;
 int MAC_VLANTR_ETV_LEN ;
 int MAC_VLANTR_ETV_POS ;
 int MAC_VLANTR_VL_LEN ;
 int MAC_VLANTR_VL_POS ;
 int MAC_VLANTR_VTHM_LEN ;
 int MAC_VLANTR_VTHM_POS ;
 int MAC_VLANTR_VTIM_LEN ;
 int MAC_VLANTR_VTIM_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlgmac_enable_rx_vlan_filtering(struct xlgmac_pdata *pdata)
{
 u32 regval;

 regval = readl(pdata->mac_regs + MAC_PFR);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_PFR_VTFE_POS,
         MAC_PFR_VTFE_LEN, 1);
 writel(regval, pdata->mac_regs + MAC_PFR);

 regval = readl(pdata->mac_regs + MAC_VLANTR);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_VTHM_POS,
         MAC_VLANTR_VTHM_LEN, 1);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_VTIM_POS,
         MAC_VLANTR_VTIM_LEN, 0);

 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_ETV_POS,
         MAC_VLANTR_ETV_LEN, 1);






 regval = XLGMAC_SET_REG_BITS(regval, MAC_VLANTR_VL_POS,
         MAC_VLANTR_VL_LEN, 1);
 writel(regval, pdata->mac_regs + MAC_VLANTR);

 return 0;
}
