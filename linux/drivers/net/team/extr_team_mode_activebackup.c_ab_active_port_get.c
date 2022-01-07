
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct team_port {TYPE_1__* dev; } ;
struct TYPE_5__ {int u32_val; } ;
struct team_gsetter_ctx {TYPE_2__ data; } ;
struct team {int lock; } ;
struct TYPE_6__ {int active_port; } ;
struct TYPE_4__ {int ifindex; } ;


 TYPE_3__* ab_priv (struct team*) ;
 int lockdep_is_held (int *) ;
 struct team_port* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static int ab_active_port_get(struct team *team, struct team_gsetter_ctx *ctx)
{
 struct team_port *active_port;

 active_port = rcu_dereference_protected(ab_priv(team)->active_port,
      lockdep_is_held(&team->lock));
 if (active_port)
  ctx->data.u32_val = active_port->dev->ifindex;
 else
  ctx->data.u32_val = 0;
 return 0;
}
