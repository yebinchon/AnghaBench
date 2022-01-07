
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {int dummy; } ;


 int EIO ;
 int em28xx_i2c_recv_bytes (struct em28xx*,int ,int *,int) ;

__attribute__((used)) static int em28xx_i2c_check_for_device(struct em28xx *dev, u16 addr)
{
 int ret;
 u8 buf;

 ret = em28xx_i2c_recv_bytes(dev, addr, &buf, 1);
 if (ret == 1)
  return 0;
 return (ret < 0) ? ret : -EIO;
}
