
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CRC32 (int ,int ) ;

__attribute__((used)) static u32
calc_crc32( u32 crc, u8 *p, u32 len )
{
 while( len-- )
  crc = CRC32( *p++, crc );

 return crc;
}
