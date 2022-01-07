
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct spi_device {int dummy; } ;


 int SLIC_THREE_LEN ;
 int bitrev16 (int) ;
 scalar_t__ bitrev8 (scalar_t__) ;
 int spi_write (struct spi_device*,scalar_t__*,int ) ;

__attribute__((used)) static void slic_write(struct spi_device *spi, u16 addr,
         u8 data)
{
 u8 temp[3];

 addr = bitrev16(addr) >> 1;
 data = bitrev8(data);
 temp[0] = (u8)((addr >> 8) & 0x7f);
 temp[1] = (u8)(addr & 0xfe);
 temp[2] = data;


 spi_write(spi, &temp[0], SLIC_THREE_LEN);
}
