
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_option {int per_port; } ;
struct team {int dummy; } ;


 int __team_option_inst_add (struct team*,struct team_option*,int *) ;
 int __team_option_inst_del_option (struct team*,struct team_option*) ;

__attribute__((used)) static int __team_option_inst_add_option(struct team *team,
      struct team_option *option)
{
 int err;

 if (!option->per_port) {
  err = __team_option_inst_add(team, option, ((void*)0));
  if (err)
   goto inst_del_option;
 }
 return 0;

inst_del_option:
 __team_option_inst_del_option(team, option);
 return err;
}
