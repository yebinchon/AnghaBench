
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_option {int dummy; } ;
struct team {int dummy; } ;


 int __team_options_change_check (struct team*) ;
 int __team_options_register (struct team*,struct team_option const*,size_t) ;

int team_options_register(struct team *team,
     const struct team_option *option,
     size_t option_count)
{
 int err;

 err = __team_options_register(team, option, option_count);
 if (err)
  return err;
 __team_options_change_check(team);
 return 0;
}
