
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct team_option_inst_info {unsigned char array_index; } ;
struct team {int dummy; } ;
struct lb_priv {TYPE_3__* ex; } ;
struct TYPE_5__ {TYPE_1__* info; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {struct team_option_inst_info* opt_inst_info; } ;


 struct lb_priv* get_lb_priv (struct team*) ;

__attribute__((used)) static int lb_hash_stats_init(struct team *team,
         struct team_option_inst_info *info)
{
 struct lb_priv *lb_priv = get_lb_priv(team);
 unsigned char hash = info->array_index;

 lb_priv->ex->stats.info[hash].opt_inst_info = info;
 return 0;
}
