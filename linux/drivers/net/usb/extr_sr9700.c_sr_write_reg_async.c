
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int SR_REQ_WR_REG ;
 int SR_WR_REGS ;
 int usbnet_write_cmd_async (struct usbnet*,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void sr_write_reg_async(struct usbnet *dev, u8 reg, u8 value)
{
 usbnet_write_cmd_async(dev, SR_WR_REGS, SR_REQ_WR_REG,
          value, reg, ((void*)0), 0);
}
