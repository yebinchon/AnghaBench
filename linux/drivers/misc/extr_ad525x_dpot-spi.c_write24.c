
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int spi_write (void*,int*,int) ;

__attribute__((used)) static int write24(void *client, u8 reg, u16 val)
{
 u8 data[3] = {reg, val >> 8, val};

 return spi_write(client, data, 3);
}
