
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team_option_inst {int list; } ;


 int kfree (struct team_option_inst*) ;
 int list_del (int *) ;

__attribute__((used)) static void __team_option_inst_del(struct team_option_inst *opt_inst)
{
 list_del(&opt_inst->list);
 kfree(opt_inst);
}
