
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {int swe_port_state; } ;


 int LAN9303_SWE_PORT_MIRROR ;
 int LAN9303_SWE_PORT_MIRROR_DISABLED ;
 int LAN9303_SWE_PORT_STATE ;
 int eth_stp_addr ;
 int lan9303_alr_add_port (struct lan9303*,int ,int ,int) ;
 int lan9303_write_switch_reg (struct lan9303*,int ,int ) ;

__attribute__((used)) static void lan9303_bridge_ports(struct lan9303 *chip)
{

 lan9303_write_switch_reg(chip, LAN9303_SWE_PORT_MIRROR,
     LAN9303_SWE_PORT_MIRROR_DISABLED);

 lan9303_write_switch_reg(chip, LAN9303_SWE_PORT_STATE,
     chip->swe_port_state);
 lan9303_alr_add_port(chip, eth_stp_addr, 0, 1);
}
