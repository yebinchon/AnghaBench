
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int spi_write (void*,int *,int) ;

__attribute__((used)) static int write8(void *client, u8 val)
{
 u8 data = val;

 return spi_write(client, &data, 1);
}
