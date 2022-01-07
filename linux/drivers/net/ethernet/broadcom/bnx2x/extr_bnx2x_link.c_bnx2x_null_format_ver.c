
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
typedef int u16 ;



__attribute__((used)) static int bnx2x_null_format_ver(u32 spirom_ver, u8 *str, u16 *len)
{
 str[0] = '\0';
 (*len)--;
 return 0;
}
