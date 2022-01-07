
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int u32_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int dummy; } ;
struct lb_priv {TYPE_3__* ex; } ;
struct TYPE_5__ {int refresh_interval; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 struct lb_priv* get_lb_priv (struct team*) ;

__attribute__((used)) static int lb_stats_refresh_interval_get(struct team *team,
      struct team_gsetter_ctx *ctx)
{
 struct lb_priv *lb_priv = get_lb_priv(team);

 ctx->data.u32_val = lb_priv->ex->stats.refresh_interval;
 return 0;
}
