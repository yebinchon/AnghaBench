
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaweth_device {int configuration; int dev; } ;


 int KAWETH_COMMAND_GET_ETHERNET_DESC ;
 int KAWETH_CONTROL_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kaweth_control (struct kaweth_device*,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int kaweth_read_configuration(struct kaweth_device *kaweth)
{
 int retval;

 retval = kaweth_control(kaweth,
    usb_rcvctrlpipe(kaweth->dev, 0),
    KAWETH_COMMAND_GET_ETHERNET_DESC,
    USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_DEVICE,
    0,
    0,
    (void *)&kaweth->configuration,
    sizeof(kaweth->configuration),
    KAWETH_CONTROL_TIMEOUT);

 return retval;
}
