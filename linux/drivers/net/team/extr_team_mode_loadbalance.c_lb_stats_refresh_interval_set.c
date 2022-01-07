
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int u32_val; } ;
struct team_gsetter_ctx {TYPE_1__ data; } ;
struct team {int dummy; } ;
struct lb_priv {TYPE_2__* ex; } ;
struct TYPE_6__ {unsigned int refresh_interval; int refresh_dw; } ;
struct TYPE_5__ {TYPE_3__ stats; } ;


 int cancel_delayed_work (int *) ;
 struct lb_priv* get_lb_priv (struct team*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int lb_stats_refresh_interval_set(struct team *team,
      struct team_gsetter_ctx *ctx)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 unsigned int interval;

 interval = ctx->data.u32_val;
 if (lb_priv->ex->stats.refresh_interval == interval)
  return 0;
 lb_priv->ex->stats.refresh_interval = interval;
 if (interval)
  schedule_delayed_work(&lb_priv->ex->stats.refresh_dw, 0);
 else
  cancel_delayed_work(&lb_priv->ex->stats.refresh_dw);
 return 0;
}
