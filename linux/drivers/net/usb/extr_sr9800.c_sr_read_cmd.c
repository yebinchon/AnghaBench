
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int EINVAL ;
 int SR_REQ_RD_REG ;
 int usbnet_read_cmd (struct usbnet*,int ,int ,int,int,void*,int) ;

__attribute__((used)) static int sr_read_cmd(struct usbnet *dev, u8 cmd, u16 value, u16 index,
       u16 size, void *data)
{
 int err;

 err = usbnet_read_cmd(dev, cmd, SR_REQ_RD_REG, value, index,
         data, size);
 if ((err != size) && (err >= 0))
  err = -EINVAL;

 return err;
}
