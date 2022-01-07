
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int dummy; } ;
typedef enum ath_btcoex_scheme { ____Placeholder_ath_btcoex_scheme } ath_btcoex_scheme ;


 int ATH_BTCOEX_CFG_NONE ;

__attribute__((used)) static inline enum ath_btcoex_scheme
ath9k_hw_get_btcoex_scheme(struct ath_hw *ah)
{
 return ATH_BTCOEX_CFG_NONE;
}
