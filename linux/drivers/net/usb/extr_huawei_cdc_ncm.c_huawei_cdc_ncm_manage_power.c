
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_1__* intf; int data; } ;
struct huawei_cdc_ncm_state {int pmcount; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;


 int atomic_add_return (int,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;

__attribute__((used)) static int huawei_cdc_ncm_manage_power(struct usbnet *usbnet_dev, int on)
{
 struct huawei_cdc_ncm_state *drvstate = (void *)&usbnet_dev->data;
 int rv;

 if ((on && atomic_add_return(1, &drvstate->pmcount) == 1) ||
   (!on && atomic_dec_and_test(&drvstate->pmcount))) {
  rv = usb_autopm_get_interface(usbnet_dev->intf);
  usbnet_dev->intf->needs_remote_wakeup = on;
  if (!rv)
   usb_autopm_put_interface(usbnet_dev->intf);
 }
 return 0;
}
