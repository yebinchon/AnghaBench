
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int str_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int dummy; } ;
struct lb_priv {int select_tx_port_func; } ;
typedef int lb_select_tx_port_func_t ;


 int EINVAL ;
 struct lb_priv* get_lb_priv (struct team*) ;
 int * lb_select_tx_port_get_func (int ) ;
 int rcu_assign_pointer (int ,int *) ;

__attribute__((used)) static int lb_tx_method_set(struct team *team, struct team_gsetter_ctx *ctx)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 lb_select_tx_port_func_t *func;

 func = lb_select_tx_port_get_func(ctx->data.str_val);
 if (!func)
  return -EINVAL;
 rcu_assign_pointer(lb_priv->select_tx_port_func, func);
 return 0;
}
