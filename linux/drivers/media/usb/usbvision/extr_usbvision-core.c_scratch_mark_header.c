
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {size_t scratch_headermarker_write_ptr; int scratch_write_ptr; int * scratch_headermarker; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,size_t) ;
 int USBVISION_NUM_HEADERMARKER ;

__attribute__((used)) static void scratch_mark_header(struct usb_usbvision *usbvision)
{
 PDEBUG(DBG_SCRATCH, "header at write_ptr=%d\n", usbvision->scratch_headermarker_write_ptr);

 usbvision->scratch_headermarker[usbvision->scratch_headermarker_write_ptr] =
    usbvision->scratch_write_ptr;
 usbvision->scratch_headermarker_write_ptr += 1;
 usbvision->scratch_headermarker_write_ptr %= USBVISION_NUM_HEADERMARKER;
}
