
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan9303 {int dummy; } ;


 int LAN9303_BM_EGRSS_PORT_TYPE ;
 int LAN9303_BM_EGRSS_PORT_TYPE_SPECIAL_TAG_PORT0 ;
 int LAN9303_SWE_INGRESS_PORT_TYPE ;
 int LAN9303_SWE_INGRESS_PORT_TYPE_VLAN ;
 int lan9303_write_switch_reg (struct lan9303*,int ,int ) ;

__attribute__((used)) static int lan9303_setup_tagging(struct lan9303 *chip)
{
 int ret;
 u32 val;



 ret = lan9303_write_switch_reg(chip, LAN9303_SWE_INGRESS_PORT_TYPE,
           LAN9303_SWE_INGRESS_PORT_TYPE_VLAN);
 if (ret)
  return ret;




 val = LAN9303_BM_EGRSS_PORT_TYPE_SPECIAL_TAG_PORT0;
 return lan9303_write_switch_reg(chip, LAN9303_BM_EGRSS_PORT_TYPE, val);
}
