
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int spi_read (void*,int*,int) ;
 int write24 (void*,int,int ) ;

__attribute__((used)) static int read24(void *client, u8 reg)
{
 int ret;
 u8 buf_rx[3];

 write24(client, reg, 0);
 ret = spi_read(client, buf_rx, 3);
 if (ret < 0)
  return ret;

 return (buf_rx[1] << 8) | buf_rx[2];
}
