
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct lan9303 {int dummy; } ;


 int LAN9303_SWITCH_PORT_REG (int,int ) ;
 int lan9303_write_switch_reg (struct lan9303*,int ,int ) ;

__attribute__((used)) static int lan9303_write_switch_port(struct lan9303 *chip, int port,
         u16 regnum, u32 val)
{
 return lan9303_write_switch_reg(
  chip, LAN9303_SWITCH_PORT_REG(port, regnum), val);
}
