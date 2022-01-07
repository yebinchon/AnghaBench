
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;


 scalar_t__ CDC_NCM_COMM_ALTSETTING_NCM ;
 int CDC_NCM_DATA_ALTSETTING_NCM ;
 int ENODEV ;
 int cdc_ncm_bind_common (struct usbnet*,struct usb_interface*,int ,int ) ;
 scalar_t__ cdc_ncm_select_altsetting (struct usb_interface*) ;

__attribute__((used)) static int cdc_ncm_bind(struct usbnet *dev, struct usb_interface *intf)
{

 if (cdc_ncm_select_altsetting(intf) != CDC_NCM_COMM_ALTSETTING_NCM)
  return -ENODEV;





 return cdc_ncm_bind_common(dev, intf, CDC_NCM_DATA_ALTSETTING_NCM, 0);
}
