
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {int port; int hw_led_mode; int link_flags; struct bnx2x* bp; } ;
struct bnx2x_phy {int type; } ;
struct bnx2x {int dummy; } ;


 int BP_PATH (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 int DP (int ,char*,...) ;




 int LINK_FLAGS_INT_DISABLED ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_8481_LED1_MASK ;
 int MDIO_PMA_REG_8481_LED2_MASK ;
 int MDIO_PMA_REG_8481_LED3_MASK ;
 int MDIO_PMA_REG_8481_LED5_MASK ;
 int MDIO_PMA_REG_8481_LINK_SIGNAL ;
 int MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK ;
 int MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT ;
 int MDIO_PMA_REG_8481_SIGNAL_MASK ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_GP2_STATUS_GP_2_1 ;
 int NETIF_MSG_LINK ;
 int NIG_MASK_MI_INT ;
 int NIG_REG_MASK_INTERRUPT_PORT0 ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 ;
 int PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858 ;
 int REG_RD (struct bnx2x*,int ) ;
 int SHARED_HW_CFG_LED_EXTPHY1 ;
 int SHARED_HW_CFG_LED_EXTPHY2 ;
 int SHARED_HW_CFG_LED_MODE_SHIFT ;
 int bnx2x_bits_dis (struct bnx2x*,int ,int) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_link_int_enable (struct link_params*) ;

__attribute__((used)) static void bnx2x_848xx_set_link_led(struct bnx2x_phy *phy,
         struct link_params *params, u8 mode)
{
 struct bnx2x *bp = params->bp;
 u16 val;
 u8 port;

 if (!(CHIP_IS_E1x(bp)))
  port = BP_PATH(bp);
 else
  port = params->port;

 switch (mode) {
 case 130:

  DP(NETIF_MSG_LINK, "Port 0x%x: LED MODE OFF\n", port);

  if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
      SHARED_HW_CFG_LED_EXTPHY1) {


   bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LED1_MASK,
     0x0);

   bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LED2_MASK,
     0x0);

   bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LED3_MASK,
     0x0);

   bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LED5_MASK,
     0x0);

  } else {

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      0x0);

   if (phy->type ==
    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858) {

    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED2_MASK,
       0x0);

    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED3_MASK,
       0x0);
   }
  }
  break;
 case 131:

  DP(NETIF_MSG_LINK, "Port 0x%x: LED MODE FRONT PANEL OFF\n",
     port);

  if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
      SHARED_HW_CFG_LED_EXTPHY1) {


   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      0x0);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED2_MASK,
      0x0);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED3_MASK,
      0x0);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED5_MASK,
      0x20);

  } else {
   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      0x0);
   if (phy->type ==
       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {



    if (REG_RD(bp, NIG_REG_MASK_INTERRUPT_PORT0 +
        params->port*4) &
        NIG_MASK_MI_INT) {
     params->link_flags |=
     LINK_FLAGS_INT_DISABLED;

     bnx2x_bits_dis(
      bp,
      NIG_REG_MASK_INTERRUPT_PORT0 +
      params->port*4,
      NIG_MASK_MI_INT);
    }
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_SIGNAL_MASK,
       0x0);
   }
   if (phy->type ==
    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858) {

    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED2_MASK,
       0x0);

    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED3_MASK,
       0x0);
   }
  }
  break;
 case 129:

  DP(NETIF_MSG_LINK, "Port 0x%x: LED MODE ON\n", port);

  if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
      SHARED_HW_CFG_LED_EXTPHY1) {

   bnx2x_cl45_read(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LINK_SIGNAL,
     &val);
   val &= 0x8000;
   val |= 0x2492;

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LINK_SIGNAL,
      val);


   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      0x0);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED2_MASK,
      0x20);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED3_MASK,
      0x20);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED5_MASK,
      0x0);
  } else {
   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      0x20);
   if (phy->type ==
       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {



    if (REG_RD(bp, NIG_REG_MASK_INTERRUPT_PORT0 +
        params->port*4) &
        NIG_MASK_MI_INT) {
     params->link_flags |=
     LINK_FLAGS_INT_DISABLED;

     bnx2x_bits_dis(
      bp,
      NIG_REG_MASK_INTERRUPT_PORT0 +
      params->port*4,
      NIG_MASK_MI_INT);
    }
   }
   if (phy->type ==
       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858) {

    bnx2x_cl45_read(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LINK_SIGNAL,
      &val);
    val &= ~(7<<6);
    val |= (2<<6);
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LINK_SIGNAL,
       val);
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED3_MASK,
       0x20);
   } else {
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_SIGNAL_MASK,
       0x20);
   }
  }
  break;

 case 128:

  DP(NETIF_MSG_LINK, "Port 0x%x: LED MODE OPER\n", port);

  if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
      SHARED_HW_CFG_LED_EXTPHY1) {


   bnx2x_cl45_read(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LINK_SIGNAL,
     &val);

   if (!((val &
          MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK)
     >> MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT)) {
    DP(NETIF_MSG_LINK, "Setting LINK_SIGNAL\n");
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LINK_SIGNAL,
       0xa492);
   }


   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      0x10);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED2_MASK,
      0x80);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED3_MASK,
      0x98);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED5_MASK,
      0x40);

  } else {




   val = ((params->hw_led_mode <<
    SHARED_HW_CFG_LED_MODE_SHIFT) ==
          SHARED_HW_CFG_LED_EXTPHY2) ? 0x98 : 0x80;

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LED1_MASK,
      val);


   bnx2x_cl45_read(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8481_LINK_SIGNAL,
     &val);
   val &= ~(7<<6);
   val |= (1<<6);
   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8481_LINK_SIGNAL,
      val);
   if (phy->type ==
       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858) {
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED2_MASK,
       0x18);
    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_LED3_MASK,
       0x06);
   }
   if (phy->type ==
       PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {



    bnx2x_cl45_write(bp, phy,
       MDIO_PMA_DEVAD,
       MDIO_PMA_REG_8481_SIGNAL_MASK,
       0x40);
    if (params->link_flags &
        LINK_FLAGS_INT_DISABLED) {
     bnx2x_link_int_enable(params);
     params->link_flags &=
      ~LINK_FLAGS_INT_DISABLED;
    }
   }
  }
  break;
 }




 if (CHIP_IS_E3(bp)) {
  bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_GP2_STATUS_GP_2_1, &val);
 }
}
