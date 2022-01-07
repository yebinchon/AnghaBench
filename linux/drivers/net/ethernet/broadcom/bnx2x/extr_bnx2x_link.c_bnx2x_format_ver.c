
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int EINVAL ;
 int bnx2x_null_format_ver (int,int *,int*) ;
 int scnprintf (int *,int,char*,int,int) ;

__attribute__((used)) static int bnx2x_format_ver(u32 num, u8 *str, u16 *len)
{
 u16 ret;

 if (*len < 10) {

  bnx2x_null_format_ver(num, str, len);
  return -EINVAL;
 }

 ret = scnprintf(str, *len, "%hx.%hx", num >> 16, num);
 *len -= ret;
 return 0;
}
