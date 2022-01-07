
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;


 int iwl_tt_enter_ct_kill (struct iwl_priv*) ;
 scalar_t__ iwl_within_ct_kill_margin (struct iwl_priv*) ;

bool iwl_check_for_ct_kill(struct iwl_priv *priv)
{
 bool is_ct_kill = 0;

 if (iwl_within_ct_kill_margin(priv)) {
  iwl_tt_enter_ct_kill(priv);
  is_ct_kill = 1;
 }
 return is_ct_kill;
}
