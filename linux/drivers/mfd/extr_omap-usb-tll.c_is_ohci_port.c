
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usbhs_omap_port_mode { ____Placeholder_usbhs_omap_port_mode } usbhs_omap_port_mode ;
__attribute__((used)) static bool is_ohci_port(enum usbhs_omap_port_mode pmode)
{
 switch (pmode) {
 case 135:
 case 134:
 case 137:
 case 136:
 case 129:
 case 128:
 case 131:
 case 130:
 case 133:
 case 132:
  return 1;

 default:
  return 0;
 }
}
