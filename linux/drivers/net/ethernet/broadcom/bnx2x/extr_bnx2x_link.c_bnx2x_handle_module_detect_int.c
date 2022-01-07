
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct link_params {int link_flags; int port; int shmem_base; int chip_id; struct bnx2x_phy* phy; struct bnx2x* bp; } ;
struct bnx2x_phy {int media_type; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int DP (int ,char*) ;
 int EINVAL ;
 int ETH_PHY_NOT_PRESENT ;
 size_t EXT_PHY1 ;
 size_t INT_PHY ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_DIGITAL5_MISC6 ;
 int MISC_REGISTERS_GPIO_HIGH ;
 int MISC_REGISTERS_GPIO_INT_OUTPUT_CLR ;
 int MISC_REGISTERS_GPIO_INT_OUTPUT_SET ;
 int NETIF_MSG_LINK ;
 int PHY_INITIALIZED ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int *) ;
 scalar_t__ bnx2x_get_gpio (struct bnx2x*,int ,int ) ;
 int bnx2x_get_mod_abs_int_cfg (struct bnx2x*,int ,int ,int ,int *,int *) ;
 int bnx2x_power_sfp_module (struct link_params*,struct bnx2x_phy*,int) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;
 int bnx2x_set_gpio_int (struct bnx2x*,int ,int ,int ) ;
 int bnx2x_set_mdio_emac_per_phy (struct bnx2x*,struct link_params*) ;
 int bnx2x_set_sfp_module_fault_led (struct link_params*,int ) ;
 int bnx2x_sfp_module_detection (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_sfp_set_transmitter (struct link_params*,struct bnx2x_phy*,int) ;
 scalar_t__ bnx2x_wait_for_sfp_module_initialized (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_warpcore_config_sfi (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_warpcore_reset_lane (struct bnx2x*,struct bnx2x_phy*,int) ;

void bnx2x_handle_module_detect_int(struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 struct bnx2x_phy *phy;
 u32 gpio_val;
 u8 gpio_num, gpio_port;
 if (CHIP_IS_E3(bp)) {
  phy = &params->phy[INT_PHY];

  bnx2x_sfp_set_transmitter(params, phy, 1);
 } else {
  phy = &params->phy[EXT_PHY1];
 }
 if (bnx2x_get_mod_abs_int_cfg(bp, params->chip_id, params->shmem_base,
          params->port, &gpio_num, &gpio_port) ==
     -EINVAL) {
  DP(NETIF_MSG_LINK, "Failed to get MOD_ABS interrupt config\n");
  return;
 }


 bnx2x_set_sfp_module_fault_led(params, MISC_REGISTERS_GPIO_HIGH);


 gpio_val = bnx2x_get_gpio(bp, gpio_num, gpio_port);


 if (gpio_val == 0) {
  bnx2x_set_mdio_emac_per_phy(bp, params);
  bnx2x_set_aer_mmd(params, phy);

  bnx2x_power_sfp_module(params, phy, 1);
  bnx2x_set_gpio_int(bp, gpio_num,
       MISC_REGISTERS_GPIO_INT_OUTPUT_CLR,
       gpio_port);
  if (bnx2x_wait_for_sfp_module_initialized(phy, params) == 0) {
   bnx2x_sfp_module_detection(phy, params);
   if (CHIP_IS_E3(bp)) {
    u16 rx_tx_in_reset;




    bnx2x_cl45_read(bp, phy,
      MDIO_WC_DEVAD,
      MDIO_WC_REG_DIGITAL5_MISC6,
      &rx_tx_in_reset);
    if ((!rx_tx_in_reset) &&
        (params->link_flags &
         PHY_INITIALIZED)) {
     bnx2x_warpcore_reset_lane(bp, phy, 1);
     bnx2x_warpcore_config_sfi(phy, params);
     bnx2x_warpcore_reset_lane(bp, phy, 0);
    }
   }
  } else {
   DP(NETIF_MSG_LINK, "SFP+ module is not initialized\n");
  }
 } else {
  bnx2x_set_gpio_int(bp, gpio_num,
       MISC_REGISTERS_GPIO_INT_OUTPUT_SET,
       gpio_port);



  phy->media_type = ETH_PHY_NOT_PRESENT;
 }
}
