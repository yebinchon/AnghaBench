
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 int w5100_spi_write (struct net_device*,scalar_t__,int const) ;

__attribute__((used)) static int w5100_spi_writebulk(struct net_device *ndev, u32 addr, const u8 *buf,
          int len)
{
 int i;

 for (i = 0; i < len; i++) {
  int ret = w5100_spi_write(ndev, addr + i, buf[i]);

  if (ret)
   return ret;
 }

 return 0;
}
