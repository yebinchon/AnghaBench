
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct atmel_private {int dev; } ;


 int DR ;
 int atmel_copy_to_host (int ,void*,int,int) ;
 int atmel_read8 (int ,int ) ;
 int atmel_writeAR (int ,int) ;
 int crc32_le (int,int *,int) ;

__attribute__((used)) static int probe_crc(struct atmel_private *priv, u16 packet_loc, u16 msdu_size)
{
 int i = msdu_size - 4;
 u32 netcrc, crc = 0xffffffff;

 if (msdu_size < 4)
  return 0;

 atmel_copy_to_host(priv->dev, (void *)&netcrc, packet_loc + i, 4);

 atmel_writeAR(priv->dev, packet_loc);
 while (i--) {
  u8 octet = atmel_read8(priv->dev, DR);
  crc = crc32_le(crc, &octet, 1);
 }

 return (crc ^ 0xffffffff) == netcrc;
}
