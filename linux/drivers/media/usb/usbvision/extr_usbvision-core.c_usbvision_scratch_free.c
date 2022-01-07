
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int * scratch; } ;


 int vfree (int *) ;

void usbvision_scratch_free(struct usb_usbvision *usbvision)
{
 vfree(usbvision->scratch);
 usbvision->scratch = ((void*)0);
}
