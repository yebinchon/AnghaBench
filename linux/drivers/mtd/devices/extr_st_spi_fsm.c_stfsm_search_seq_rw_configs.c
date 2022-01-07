
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stfsm {TYPE_1__* info; } ;
struct seq_rw_config {scalar_t__ cmd; int flags; } ;
struct TYPE_2__ {int flags; } ;



__attribute__((used)) static struct seq_rw_config *
stfsm_search_seq_rw_configs(struct stfsm *fsm,
       struct seq_rw_config cfgs[])
{
 struct seq_rw_config *config;
 int flags = fsm->info->flags;

 for (config = cfgs; config->cmd != 0; config++)
  if ((config->flags & flags) == config->flags)
   return config;

 return ((void*)0);
}
