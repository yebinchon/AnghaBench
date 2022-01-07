
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_option {int name; } ;
struct team {int dummy; } ;


 struct team_option* __team_find_option (struct team*,int ) ;
 int __team_option_inst_mark_removed_option (struct team*,struct team_option*) ;

__attribute__((used)) static void __team_options_mark_removed(struct team *team,
     const struct team_option *option,
     size_t option_count)
{
 int i;

 for (i = 0; i < option_count; i++, option++) {
  struct team_option *del_opt;

  del_opt = __team_find_option(team, option->name);
  if (del_opt)
   __team_option_inst_mark_removed_option(team, del_opt);
 }
}
