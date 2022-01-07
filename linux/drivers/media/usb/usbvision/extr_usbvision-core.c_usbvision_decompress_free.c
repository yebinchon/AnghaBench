
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int * intra_frame_buffer; } ;


 int vfree (int *) ;

void usbvision_decompress_free(struct usb_usbvision *usbvision)
{
 vfree(usbvision->intra_frame_buffer);
 usbvision->intra_frame_buffer = ((void*)0);

}
