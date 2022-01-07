
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int sr_read (struct usbnet*,int ,int,int *) ;

__attribute__((used)) static int sr_read_reg(struct usbnet *dev, u8 reg, u8 *value)
{
 return sr_read(dev, reg, 1, value);
}
