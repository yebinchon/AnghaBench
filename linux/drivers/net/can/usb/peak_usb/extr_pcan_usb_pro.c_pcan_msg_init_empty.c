
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__* rec_cnt; } ;
struct pcan_usb_pro_msg {TYPE_1__ u; int rec_buffer_len; } ;


 int PCAN_USBPRO_MSG_HEADER_LEN ;
 int * pcan_msg_init (struct pcan_usb_pro_msg*,void*,int) ;

__attribute__((used)) static u8 *pcan_msg_init_empty(struct pcan_usb_pro_msg *pm,
          void *buffer_addr, int buffer_size)
{
 u8 *pr = pcan_msg_init(pm, buffer_addr, buffer_size);

 if (pr) {
  pm->rec_buffer_len = PCAN_USBPRO_MSG_HEADER_LEN;
  *pm->u.rec_cnt = 0;
 }
 return pr;
}
