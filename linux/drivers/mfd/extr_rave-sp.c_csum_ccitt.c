
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int crc_ccitt_false (int,int const*,size_t) ;
 int put_unaligned_be16 (int const,int *) ;

__attribute__((used)) static void csum_ccitt(const u8 *buf, size_t size, u8 *crc)
{
 const u16 calculated = crc_ccitt_false(0xffff, buf, size);





 put_unaligned_be16(calculated, crc);
}
