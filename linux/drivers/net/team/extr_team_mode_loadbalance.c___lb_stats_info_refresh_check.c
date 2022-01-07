
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dummy; } ;
struct lb_stats_info {int opt_inst_info; int stats; int last_stats; } ;
struct lb_stats {int dummy; } ;


 scalar_t__ memcmp (int *,int *,int) ;
 int team_option_inst_set_change (int ) ;

__attribute__((used)) static bool __lb_stats_info_refresh_check(struct lb_stats_info *s_info,
       struct team *team)
{
 if (memcmp(&s_info->last_stats, &s_info->stats,
     sizeof(struct lb_stats))) {
  team_option_inst_set_change(s_info->opt_inst_info);
  return 1;
 }
 return 0;
}
