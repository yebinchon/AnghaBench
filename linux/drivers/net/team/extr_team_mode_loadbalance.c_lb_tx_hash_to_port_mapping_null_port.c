
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct team_port {int dummy; } ;
struct team {int dummy; } ;
struct lb_priv {TYPE_1__* ex; } ;
struct lb_port_mapping {int opt_inst_info; int port; } ;
struct TYPE_2__ {struct lb_port_mapping* tx_hash_to_port_mapping; } ;


 int LB_TX_HASHTABLE_SIZE ;
 int RCU_INIT_POINTER (int ,int *) ;
 struct lb_priv* get_lb_priv (struct team*) ;
 struct team_port* rcu_access_pointer (int ) ;
 int team_option_inst_set_change (int ) ;
 int team_options_change_check (struct team*) ;

__attribute__((used)) static void lb_tx_hash_to_port_mapping_null_port(struct team *team,
       struct team_port *port)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 bool changed = 0;
 int i;

 for (i = 0; i < LB_TX_HASHTABLE_SIZE; i++) {
  struct lb_port_mapping *pm;

  pm = &lb_priv->ex->tx_hash_to_port_mapping[i];
  if (rcu_access_pointer(pm->port) == port) {
   RCU_INIT_POINTER(pm->port, ((void*)0));
   team_option_inst_set_change(pm->opt_inst_info);
   changed = 1;
  }
 }
 if (changed)
  team_options_change_check(team);
}
