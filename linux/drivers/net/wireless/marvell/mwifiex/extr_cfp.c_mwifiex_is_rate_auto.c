
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct mwifiex_private {scalar_t__* bitmap_rates; } ;


 size_t ARRAY_SIZE (scalar_t__*) ;

u8
mwifiex_is_rate_auto(struct mwifiex_private *priv)
{
 u32 i;
 int rate_num = 0;

 for (i = 0; i < ARRAY_SIZE(priv->bitmap_rates); i++)
  if (priv->bitmap_rates[i])
   rate_num++;

 if (rate_num > 1)
  return 1;
 else
  return 0;
}
