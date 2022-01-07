
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_kill_exit_threshold; int ct_kill_threshold; } ;
struct iwl_priv {TYPE_1__ hw_params; } ;


 int CT_KILL_EXIT_THRESHOLD ;
 int CT_KILL_THRESHOLD ;

__attribute__((used)) static void iwl6000_set_ct_threshold(struct iwl_priv *priv)
{

 priv->hw_params.ct_kill_threshold = CT_KILL_THRESHOLD;
 priv->hw_params.ct_kill_exit_threshold = CT_KILL_EXIT_THRESHOLD;
}
