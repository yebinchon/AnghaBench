
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RTL8152_REQT_WRITE ;
 int RTL8152_REQ_SET_REGS ;
 int kfree (void*) ;
 void* kmemdup (void*,int ,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,void*,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static
int set_registers(struct r8152 *tp, u16 value, u16 index, u16 size, void *data)
{
 int ret;
 void *tmp;

 tmp = kmemdup(data, size, GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 ret = usb_control_msg(tp->udev, usb_sndctrlpipe(tp->udev, 0),
         RTL8152_REQ_SET_REGS, RTL8152_REQT_WRITE,
         value, index, tmp, size, 500);

 kfree(tmp);

 return ret;
}
