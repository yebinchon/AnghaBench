
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct r8152 {int udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RTL8152_REQT_READ ;
 int RTL8152_REQ_GET_REGS ;
 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int,int ) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,void*,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static
int get_registers(struct r8152 *tp, u16 value, u16 index, u16 size, void *data)
{
 int ret;
 void *tmp;

 tmp = kmalloc(size, GFP_KERNEL);
 if (!tmp)
  return -ENOMEM;

 ret = usb_control_msg(tp->udev, usb_rcvctrlpipe(tp->udev, 0),
         RTL8152_REQ_GET_REGS, RTL8152_REQT_READ,
         value, index, tmp, size, 500);
 if (ret < 0)
  memset(data, 0xff, size);
 else
  memcpy(data, tmp, size);

 kfree(tmp);

 return ret;
}
