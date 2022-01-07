
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int bitrev16 (int ) ;
 int crc16 (int,int const*,size_t) ;

__attribute__((used)) static u32 smsc_crc(const u8 *buffer, size_t len, int filter)
{
 u32 crc = bitrev16(crc16(0xFFFF, buffer, len));
 return crc << ((filter % 2) * 16);
}
