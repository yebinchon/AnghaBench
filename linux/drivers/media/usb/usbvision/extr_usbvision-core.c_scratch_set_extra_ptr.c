
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int scratch_read_ptr; } ;


 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int) ;
 int scratch_buf_size ;

__attribute__((used)) static void scratch_set_extra_ptr(struct usb_usbvision *usbvision, int *ptr,
      int len)
{
 *ptr = (usbvision->scratch_read_ptr + len) % scratch_buf_size;

 PDEBUG(DBG_SCRATCH, "ptr=%d\n", *ptr);
}
