
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_option {int dummy; } ;
struct team {int dummy; } ;


 int __team_options_change_check (struct team*) ;
 int __team_options_mark_removed (struct team*,struct team_option const*,size_t) ;
 int __team_options_unregister (struct team*,struct team_option const*,size_t) ;

void team_options_unregister(struct team *team,
        const struct team_option *option,
        size_t option_count)
{
 __team_options_mark_removed(team, option, option_count);
 __team_options_change_check(team);
 __team_options_unregister(team, option, option_count);
}
