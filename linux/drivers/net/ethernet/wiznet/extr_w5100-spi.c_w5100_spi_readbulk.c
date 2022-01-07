
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 int w5100_spi_read (struct net_device*,scalar_t__) ;

__attribute__((used)) static int w5100_spi_readbulk(struct net_device *ndev, u32 addr, u8 *buf,
         int len)
{
 int i;

 for (i = 0; i < len; i++) {
  int ret = w5100_spi_read(ndev, addr + i);

  if (ret < 0)
   return ret;
  buf[i] = ret;
 }

 return 0;
}
