
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int RNDIS_UNKNOWN ;
 int rndis_copy_module_params (struct usbnet*,int ) ;

__attribute__((used)) static int unknown_early_init(struct usbnet *usbdev)
{



 rndis_copy_module_params(usbdev, RNDIS_UNKNOWN);




 return 0;
}
