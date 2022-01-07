
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ hash_table_size; } ;
struct xlgmac_pdata {scalar_t__ mac_regs; TYPE_2__ hw_feat; TYPE_1__* netdev; } ;
struct TYPE_3__ {int dev_addr; } ;


 scalar_t__ MAC_PFR ;
 int MAC_PFR_HMC_LEN ;
 int MAC_PFR_HMC_POS ;
 int MAC_PFR_HPF_LEN ;
 int MAC_PFR_HPF_POS ;
 int MAC_PFR_HUC_LEN ;
 int MAC_PFR_HUC_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;
 int xlgmac_set_mac_address (struct xlgmac_pdata*,int ) ;

__attribute__((used)) static void xlgmac_config_mac_address(struct xlgmac_pdata *pdata)
{
 u32 regval;

 xlgmac_set_mac_address(pdata, pdata->netdev->dev_addr);


 if (pdata->hw_feat.hash_table_size) {
  regval = readl(pdata->mac_regs + MAC_PFR);
  regval = XLGMAC_SET_REG_BITS(regval, MAC_PFR_HPF_POS,
          MAC_PFR_HPF_LEN, 1);
  regval = XLGMAC_SET_REG_BITS(regval, MAC_PFR_HUC_POS,
          MAC_PFR_HUC_LEN, 1);
  regval = XLGMAC_SET_REG_BITS(regval, MAC_PFR_HMC_POS,
          MAC_PFR_HMC_LEN, 1);
  writel(regval, pdata->mac_regs + MAC_PFR);
 }
}
