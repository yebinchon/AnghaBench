
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int lock; } ;
struct lb_priv {int select_tx_port_func; } ;
typedef int lb_select_tx_port_func_t ;


 int BUG_ON (int) ;
 struct lb_priv* get_lb_priv (struct team*) ;
 char* lb_select_tx_port_get_name (int *) ;
 int lockdep_is_held (int *) ;
 int * rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int lb_tx_method_get(struct team *team, struct team_gsetter_ctx *ctx)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 lb_select_tx_port_func_t *func;
 char *name;

 func = rcu_dereference_protected(lb_priv->select_tx_port_func,
      lockdep_is_held(&team->lock));
 name = lb_select_tx_port_get_name(func);
 BUG_ON(!name);
 ctx->data.str_val = name;
 return 0;
}
