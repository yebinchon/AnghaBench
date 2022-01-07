
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;


 scalar_t__ isspace (char) ;
 scalar_t__ isxdigit (char) ;
 int simple_strtol (char*,int *,int) ;

__attribute__((used)) static u32 mwifiex_parse_cal_cfg(u8 *src, size_t len, u8 *dst)
{
 u8 *s = src, *d = dst;

 while (s - src < len) {
  if (*s && (isspace(*s) || *s == '\t')) {
   s++;
   continue;
  }
  if (isxdigit(*s)) {
   *d++ = simple_strtol(s, ((void*)0), 16);
   s += 2;
  } else {
   s++;
  }
 }

 return d - dst;
}
