
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct em28xx {int dummy; } ;


 int USB_REQ_GET_STATUS ;
 int em28xx_write_regs_req (struct em28xx*,int ,int ,char*,int) ;

int em28xx_write_regs(struct em28xx *dev, u16 reg, char *buf, int len)
{
 return em28xx_write_regs_req(dev, USB_REQ_GET_STATUS, reg, buf, len);
}
