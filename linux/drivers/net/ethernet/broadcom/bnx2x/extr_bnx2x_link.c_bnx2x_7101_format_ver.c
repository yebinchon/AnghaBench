
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
typedef int u16 ;


 int EINVAL ;

__attribute__((used)) static int bnx2x_7101_format_ver(u32 spirom_ver, u8 *str, u16 *len)
{
 if (*len < 5)
  return -EINVAL;
 str[0] = (spirom_ver & 0xFF);
 str[1] = (spirom_ver & 0xFF00) >> 8;
 str[2] = (spirom_ver & 0xFF0000) >> 16;
 str[3] = (spirom_ver & 0xFF000000) >> 24;
 str[4] = '\0';
 *len -= 5;
 return 0;
}
