
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int dummy; } ;


 int LAN9303_MAC_RX_CFG_0 ;
 int LAN9303_MAC_RX_CFG_X_REJECT_MAC_TYPES ;
 int LAN9303_MAC_TX_CFG_0 ;
 int LAN9303_MAC_TX_CFG_X_TX_IFG_CONFIG_DEFAULT ;
 int LAN9303_MAC_TX_CFG_X_TX_PAD_ENABLE ;
 int lan9303_write_switch_port (struct lan9303*,unsigned int,int ,int) ;

__attribute__((used)) static int lan9303_disable_processing_port(struct lan9303 *chip,
        unsigned int port)
{
 int ret;


 ret = lan9303_write_switch_port(chip, port, LAN9303_MAC_RX_CFG_0,
     LAN9303_MAC_RX_CFG_X_REJECT_MAC_TYPES);
 if (ret)
  return ret;


 return lan9303_write_switch_port(chip, port, LAN9303_MAC_TX_CFG_0,
    LAN9303_MAC_TX_CFG_X_TX_IFG_CONFIG_DEFAULT |
    LAN9303_MAC_TX_CFG_X_TX_PAD_ENABLE);
}
