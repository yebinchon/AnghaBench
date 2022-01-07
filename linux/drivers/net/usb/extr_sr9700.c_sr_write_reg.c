
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int SR_REQ_WR_REG ;
 int SR_WR_REGS ;
 int usbnet_write_cmd (struct usbnet*,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int sr_write_reg(struct usbnet *dev, u8 reg, u8 value)
{
 return usbnet_write_cmd(dev, SR_WR_REGS, SR_REQ_WR_REG,
    value, reg, ((void*)0), 0);
}
