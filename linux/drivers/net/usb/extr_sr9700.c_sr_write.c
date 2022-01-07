
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int EINVAL ;
 int SR_REQ_WR_REG ;
 int SR_WR_REGS ;
 int usbnet_write_cmd (struct usbnet*,int ,int ,int ,int ,void*,int) ;

__attribute__((used)) static int sr_write(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 int err;

 err = usbnet_write_cmd(dev, SR_WR_REGS, SR_REQ_WR_REG, 0, reg, data,
          length);
 if ((err >= 0) && (err < length))
  err = -EINVAL;
 return err;
}
