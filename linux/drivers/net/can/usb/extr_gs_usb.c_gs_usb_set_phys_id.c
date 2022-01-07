
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;




 int GS_CAN_IDENTIFY_OFF ;
 int GS_CAN_IDENTIFY_ON ;
 int gs_usb_set_identify (struct net_device*,int ) ;

__attribute__((used)) static int gs_usb_set_phys_id(struct net_device *dev,
         enum ethtool_phys_id_state state)
{
 int rc = 0;

 switch (state) {
 case 129:
  rc = gs_usb_set_identify(dev, GS_CAN_IDENTIFY_ON);
  break;
 case 128:
  rc = gs_usb_set_identify(dev, GS_CAN_IDENTIFY_OFF);
  break;
 default:
  break;
 }

 return rc;
}
