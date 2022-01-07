
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct port {int dev; } ;
struct TYPE_2__ {int cable; } ;


 int STATUS_CABLE_DCD ;
 int STATUS_CABLE_DCE ;
 int STATUS_CABLE_DSR ;


 int STATUS_CABLE_PM_SHIFT ;



 TYPE_1__* get_status (struct port*) ;
 int netdev_info (int ,char*,char const*,char const*,char const*,char const*,char const*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_on (int ) ;

__attribute__((used)) static inline void wanxl_cable_intr(struct port *port)
{
 u32 value = get_status(port)->cable;
 int valid = 1;
 const char *cable, *pm, *dte = "", *dsr = "", *dcd = "";

 switch(value & 0x7) {
 case 129: cable = "V.35"; break;
 case 128: cable = "X.21"; break;
 case 130: cable = "V.24"; break;
 case 132: cable = "EIA530"; break;
 case 131: cable = "no"; break;
 default: cable = "invalid";
 }

 switch((value >> STATUS_CABLE_PM_SHIFT) & 0x7) {
 case 129: pm = "V.35"; break;
 case 128: pm = "X.21"; break;
 case 130: pm = "V.24"; break;
 case 132: pm = "EIA530"; break;
 case 131: pm = "no personality"; valid = 0; break;
 default: pm = "invalid personality"; valid = 0;
 }

 if (valid) {
  if ((value & 7) == ((value >> STATUS_CABLE_PM_SHIFT) & 7)) {
   dsr = (value & STATUS_CABLE_DSR) ? ", DSR ON" :
    ", DSR off";
   dcd = (value & STATUS_CABLE_DCD) ? ", carrier ON" :
    ", carrier off";
  }
  dte = (value & STATUS_CABLE_DCE) ? " DCE" : " DTE";
 }
 netdev_info(port->dev, "%s%s module, %s cable%s%s\n",
      pm, dte, cable, dsr, dcd);

 if (value & STATUS_CABLE_DCD)
  netif_carrier_on(port->dev);
 else
  netif_carrier_off(port->dev);
}
