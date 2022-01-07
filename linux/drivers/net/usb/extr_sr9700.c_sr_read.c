
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int EINVAL ;
 int SR_RD_REGS ;
 int SR_REQ_RD_REG ;
 int usbnet_read_cmd (struct usbnet*,int ,int ,int ,int ,void*,int) ;

__attribute__((used)) static int sr_read(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 int err;

 err = usbnet_read_cmd(dev, SR_RD_REGS, SR_REQ_RD_REG, 0, reg, data,
         length);
 if ((err != length) && (err >= 0))
  err = -EINVAL;
 return err;
}
