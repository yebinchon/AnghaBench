
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct flexcop_usb {int tmp_buffer_length; int* tmp_buffer; int fc_dev; } ;


 int deb_ts (char*,...) ;
 int flexcop_pass_dmx_packets (int ,int*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void flexcop_usb_process_frame(struct flexcop_usb *fc_usb,
 u8 *buffer, int buffer_length)
{
 u8 *b;
 int l;

 deb_ts("tmp_buffer_length=%d, buffer_length=%d\n",
  fc_usb->tmp_buffer_length, buffer_length);

 if (fc_usb->tmp_buffer_length > 0) {
  memcpy(fc_usb->tmp_buffer+fc_usb->tmp_buffer_length, buffer,
    buffer_length);
  fc_usb->tmp_buffer_length += buffer_length;
  b = fc_usb->tmp_buffer;
  l = fc_usb->tmp_buffer_length;
 } else {
  b=buffer;
  l=buffer_length;
 }

 while (l >= 190) {
  if (*b == 0xff) {
   switch (*(b+1) & 0x03) {
   case 0x01:
    if (*(b+2) == 0x47)
     flexcop_pass_dmx_packets(
       fc_usb->fc_dev, b+2, 1);
    else
     deb_ts("not ts packet %*ph\n", 4, b+2);
    b += 190;
    l -= 190;
    break;
   default:
    deb_ts("wrong packet type\n");
    l = 0;
    break;
   }
  } else {
   deb_ts("wrong header\n");
   l = 0;
  }
 }

 if (l>0)
  memcpy(fc_usb->tmp_buffer, b, l);
 fc_usb->tmp_buffer_length = l;
}
