
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *p5_intf_modes(unsigned int p5_interface)
{
 switch (p5_interface) {
 case 131:
  return "DISABLED";
 case 129:
  return "PHY P0";
 case 128:
  return "PHY P4";
 case 130:
  return "GMAC5";
 default:
  return "unknown";
 }
}
