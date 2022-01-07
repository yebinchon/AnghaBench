
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct em28xx {int dummy; } ;


 int em25xx_bus_B_recv_bytes (struct em28xx*,int ,int *,int) ;

__attribute__((used)) static int em25xx_bus_B_check_for_device(struct em28xx *dev, u16 addr)
{
 u8 buf;
 int ret;

 ret = em25xx_bus_B_recv_bytes(dev, addr, &buf, 1);
 if (ret < 0)
  return ret;

 return 0;




}
