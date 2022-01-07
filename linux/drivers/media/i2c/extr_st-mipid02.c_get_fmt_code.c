
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 unsigned int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__* mipid02_supported_fmt_codes ;

__attribute__((used)) static __u32 get_fmt_code(__u32 code)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(mipid02_supported_fmt_codes); i++) {
  if (code == mipid02_supported_fmt_codes[i])
   return code;
 }

 return mipid02_supported_fmt_codes[0];
}
