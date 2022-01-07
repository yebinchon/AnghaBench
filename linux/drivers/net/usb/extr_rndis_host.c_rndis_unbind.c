
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;
struct rndis_halt {void* msg_len; void* msg_type; } ;


 int CONTROL_BUFFER_SIZE ;
 int GFP_KERNEL ;
 int RNDIS_MSG_HALT ;
 void* cpu_to_le32 (int) ;
 int kfree (struct rndis_halt*) ;
 struct rndis_halt* kzalloc (int ,int ) ;
 int rndis_command (struct usbnet*,void*,int ) ;
 int usbnet_cdc_unbind (struct usbnet*,struct usb_interface*) ;

void rndis_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct rndis_halt *halt;


 halt = kzalloc(CONTROL_BUFFER_SIZE, GFP_KERNEL);
 if (halt) {
  halt->msg_type = cpu_to_le32(RNDIS_MSG_HALT);
  halt->msg_len = cpu_to_le32(sizeof *halt);
  (void) rndis_command(dev, (void *)halt, CONTROL_BUFFER_SIZE);
  kfree(halt);
 }

 usbnet_cdc_unbind(dev, intf);
}
