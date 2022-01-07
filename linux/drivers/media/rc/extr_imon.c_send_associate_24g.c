
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {int usb_tx_buf; int dev_present_intf0; } ;
typedef int packet ;


 int ENODEV ;
 int memcpy (int ,unsigned char const*,int) ;
 int pr_err (char*) ;
 int send_packet (struct imon_context*) ;

__attribute__((used)) static int send_associate_24g(struct imon_context *ictx)
{
 int retval;
 const unsigned char packet[8] = { 0x01, 0x00, 0x00, 0x00,
       0x00, 0x00, 0x00, 0x20 };

 if (!ictx) {
  pr_err("no context for device\n");
  return -ENODEV;
 }

 if (!ictx->dev_present_intf0) {
  pr_err("no iMON device present\n");
  return -ENODEV;
 }

 memcpy(ictx->usb_tx_buf, packet, sizeof(packet));
 retval = send_packet(ictx);

 return retval;
}
