
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







__attribute__((used)) static inline u8 mwifiex_is_tdls_link_setup(u8 status)
{
 switch (status) {
 case 128:
 case 131:
 case 130:
 case 129:
  return 1;
 default:
  break;
 }

 return 0;
}
