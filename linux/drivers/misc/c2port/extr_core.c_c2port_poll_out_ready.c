
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2port_device {int dummy; } ;


 int EIO ;
 int c2port_read_ar (struct c2port_device*,int*) ;
 int udelay (int) ;

__attribute__((used)) static int c2port_poll_out_ready(struct c2port_device *dev)
{
 u8 addr;
 int ret, timeout = 10000;

 do {
  ret = (c2port_read_ar(dev, &addr));
  if (ret < 0)
   return -EIO;

  if (addr & 0x01)
   break;

  udelay(1);
 } while (--timeout > 0);
 if (timeout == 0)
  return -EIO;

 return 0;
}
