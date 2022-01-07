
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int) ;
 int I2C_DEV_ADDR_A0 ;
 int NETIF_MSG_LINK ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT ;
 int bnx2x_read_sfp_module_eeprom (struct bnx2x_phy*,struct link_params*,int ,int,int,int *) ;
 int bnx2x_warpcore_read_sfp_module_eeprom (struct bnx2x_phy*,struct link_params*,int ,int,int,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int bnx2x_wait_for_sfp_module_initialized(struct bnx2x_phy *phy,
       struct link_params *params)

{
 u8 val;
 int rc;
 struct bnx2x *bp = params->bp;
 u16 timeout;




 for (timeout = 0; timeout < 60; timeout++) {
  if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT)
   rc = bnx2x_warpcore_read_sfp_module_eeprom(
    phy, params, I2C_DEV_ADDR_A0, 1, 1, &val,
    1);
  else
   rc = bnx2x_read_sfp_module_eeprom(phy, params,
         I2C_DEV_ADDR_A0,
         1, 1, &val);
  if (rc == 0) {
   DP(NETIF_MSG_LINK,
      "SFP+ module initialization took %d ms\n",
      timeout * 5);
   return 0;
  }
  usleep_range(5000, 10000);
 }
 rc = bnx2x_read_sfp_module_eeprom(phy, params, I2C_DEV_ADDR_A0,
       1, 1, &val);
 return rc;
}
