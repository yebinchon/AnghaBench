
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct mwifiex_adapter {int dummy; } ;
typedef enum mwifiex_wmm_ac_e { ____Placeholder_mwifiex_wmm_ac_e } mwifiex_wmm_ac_e ;


 size_t ARRAY_SIZE (int const*) ;





__attribute__((used)) static enum mwifiex_wmm_ac_e
mwifiex_wmm_convert_tos_to_ac(struct mwifiex_adapter *adapter, u32 tos)
{

 static const enum mwifiex_wmm_ac_e tos_to_ac[] = {
  131,
  130,
  130,
  131,
  129,
  129,
  128,
  128
 };

 if (tos >= ARRAY_SIZE(tos_to_ac))
  return 131;

 return tos_to_ac[tos];
}
