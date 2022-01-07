
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mci_result {int dummy; } ;
struct mci_command {int dummy; } ;
struct mci {TYPE_1__* base; } ;
struct TYPE_2__ {int mci_lock; } ;


 int _mci_cmd_unlocked (struct mci*,int *,int,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ddb_mci_cmd(struct mci *state,
  struct mci_command *command,
  struct mci_result *result)
{
 int stat;

 mutex_lock(&state->base->mci_lock);
 stat = _mci_cmd_unlocked(state,
     (u32 *)command, sizeof(*command) / sizeof(u32),
     (u32 *)result, sizeof(*result) / sizeof(u32));
 mutex_unlock(&state->base->mci_lock);
 return stat;
}
