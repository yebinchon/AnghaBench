
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaweth_device {int scratch; int dev; int net; } ;
typedef scalar_t__ __u16 ;


 int KAWETH_COMMAND_SET_SOFS_WAIT ;
 int KAWETH_CONTROL_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int kaweth_control (struct kaweth_device*,int ,int ,int,scalar_t__,int ,void*,int ,int ) ;
 int netdev_dbg (int ,char*,unsigned int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int kaweth_set_sofs_wait(struct kaweth_device *kaweth, __u16 sofs_wait)
{
 int retval;

 netdev_dbg(kaweth->net, "Set SOFS wait to %d\n", (unsigned)sofs_wait);

 retval = kaweth_control(kaweth,
    usb_sndctrlpipe(kaweth->dev, 0),
    KAWETH_COMMAND_SET_SOFS_WAIT,
    USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
    sofs_wait,
    0,
    (void *)&kaweth->scratch,
    0,
    KAWETH_CONTROL_TIMEOUT);

 return retval;
}
