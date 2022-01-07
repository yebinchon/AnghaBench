
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_option {int list; int name; } ;
struct team {int dummy; } ;


 struct team_option* __team_find_option (struct team*,int ) ;
 int __team_option_inst_del_option (struct team*,struct team_option*) ;
 int kfree (struct team_option*) ;
 int list_del (int *) ;

__attribute__((used)) static void __team_options_unregister(struct team *team,
          const struct team_option *option,
          size_t option_count)
{
 int i;

 for (i = 0; i < option_count; i++, option++) {
  struct team_option *del_opt;

  del_opt = __team_find_option(team, option->name);
  if (del_opt) {
   __team_option_inst_del_option(team, del_opt);
   list_del(&del_opt->list);
   kfree(del_opt);
  }
 }
}
