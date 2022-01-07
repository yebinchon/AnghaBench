
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_regulatory {int dummy; } ;


 int CONFIG_ATH_REG_DYNAMIC_USER_REG_HINTS ;
 int IS_ENABLED (int ) ;
 int dynamic_country_user_possible (struct ath_regulatory*) ;

__attribute__((used)) static bool ath_reg_dyn_country_user_allow(struct ath_regulatory *reg)
{
 if (!IS_ENABLED(CONFIG_ATH_REG_DYNAMIC_USER_REG_HINTS))
  return 0;
 if (!dynamic_country_user_possible(reg))
  return 0;
 return 1;
}
