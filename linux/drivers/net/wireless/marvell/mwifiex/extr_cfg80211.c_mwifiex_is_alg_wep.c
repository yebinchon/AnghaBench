
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





__attribute__((used)) static int
mwifiex_is_alg_wep(u32 cipher)
{
 switch (cipher) {
 case 128:
 case 129:
  return 1;
 default:
  break;
 }

 return 0;
}
