
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int bnx2x_3_seq_format_ver (int,int *,int *) ;

__attribute__((used)) static int bnx2x_8485x_format_ver(u32 raw_ver, u8 *str, u16 *len)
{
 u32 num;

 num = ((raw_ver & 0xF80) >> 7) << 16 | ((raw_ver & 0x7F) << 8) |
       ((raw_ver & 0xF000) >> 12);
 return bnx2x_3_seq_format_ver(num, str, len);
}
