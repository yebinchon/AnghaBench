
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int BIT (int) ;

__attribute__((used)) static u16 ocelot_wm_enc(u16 value)
{
 if (value >= BIT(8))
  return BIT(8) | (value / 16);

 return value;
}
