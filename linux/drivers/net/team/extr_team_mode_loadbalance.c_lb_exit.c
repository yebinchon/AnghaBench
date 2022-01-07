
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct team {int dummy; } ;
struct lb_priv {TYPE_2__* ex; int pcpu_stats; } ;
struct TYPE_3__ {int refresh_dw; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int ARRAY_SIZE (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int free_percpu (int ) ;
 struct lb_priv* get_lb_priv (struct team*) ;
 int kfree (TYPE_2__*) ;
 int lb_bpf_func_free (struct team*) ;
 int lb_options ;
 int team_options_unregister (struct team*,int ,int ) ;

__attribute__((used)) static void lb_exit(struct team *team)
{
 struct lb_priv *lb_priv = get_lb_priv(team);

 team_options_unregister(team, lb_options,
    ARRAY_SIZE(lb_options));
 lb_bpf_func_free(team);
 cancel_delayed_work_sync(&lb_priv->ex->stats.refresh_dw);
 free_percpu(lb_priv->pcpu_stats);
 kfree(lb_priv->ex);
}
