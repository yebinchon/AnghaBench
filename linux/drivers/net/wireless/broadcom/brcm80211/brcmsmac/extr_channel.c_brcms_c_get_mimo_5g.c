
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct locale_mimo_info {int dummy; } ;


 size_t ARRAY_SIZE (struct locale_mimo_info const**) ;
 struct locale_mimo_info const** g_mimo_5g_table ;

__attribute__((used)) static const struct locale_mimo_info *brcms_c_get_mimo_5g(u8 locale_idx)
{
 if (locale_idx >= ARRAY_SIZE(g_mimo_5g_table))
  return ((void*)0);

 return g_mimo_5g_table[locale_idx];
}
