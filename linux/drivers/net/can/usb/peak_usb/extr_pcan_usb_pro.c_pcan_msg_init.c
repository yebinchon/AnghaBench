
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * rec_buffer; } ;
struct pcan_usb_pro_msg {int rec_buffer_size; int rec_buffer_len; int * rec_ptr; TYPE_1__ u; } ;


 int PCAN_USBPRO_MSG_HEADER_LEN ;

__attribute__((used)) static u8 *pcan_msg_init(struct pcan_usb_pro_msg *pm, void *buffer_addr,
    int buffer_size)
{
 if (buffer_size < PCAN_USBPRO_MSG_HEADER_LEN)
  return ((void*)0);

 pm->u.rec_buffer = (u8 *)buffer_addr;
 pm->rec_buffer_size = pm->rec_buffer_len = buffer_size;
 pm->rec_ptr = pm->u.rec_buffer + PCAN_USBPRO_MSG_HEADER_LEN;

 return pm->rec_ptr;
}
