
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int spi_read (void*,int*,int) ;

__attribute__((used)) static int read8(void *client)
{
 int ret;
 u8 data;

 ret = spi_read(client, &data, 1);
 if (ret < 0)
  return ret;

 return data;
}
