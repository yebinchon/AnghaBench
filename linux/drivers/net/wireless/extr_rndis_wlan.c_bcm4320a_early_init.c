
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int RNDIS_BCM4320A ;
 int rndis_copy_module_params (struct usbnet*,int ) ;

__attribute__((used)) static int bcm4320a_early_init(struct usbnet *usbdev)
{



 rndis_copy_module_params(usbdev, RNDIS_BCM4320A);





 return 0;
}
