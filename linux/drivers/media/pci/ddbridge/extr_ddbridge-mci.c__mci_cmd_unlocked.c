
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mci {int nr; TYPE_1__* base; } ;
struct ddb_link {int dummy; } ;
struct TYPE_2__ {int dev; int completion; struct ddb_link* link; } ;


 int EIO ;
 int HZ ;
 scalar_t__ MCI_COMMAND ;
 scalar_t__ MCI_CONTROL ;
 int MCI_CONTROL_ENABLE_DONE_INTERRUPT ;
 int MCI_CONTROL_RESET ;
 int MCI_CONTROL_START_COMMAND ;
 scalar_t__ MCI_RESULT ;
 int ddblreadl (struct ddb_link*,scalar_t__) ;
 int ddblwritel (struct ddb_link*,int,scalar_t__) ;
 int dev_warn (int ,char*,int ) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int _mci_cmd_unlocked(struct mci *state,
        u32 *cmd, u32 cmd_len,
        u32 *res, u32 res_len)
{
 struct ddb_link *link = state->base->link;
 u32 i, val;
 unsigned long stat;

 val = ddblreadl(link, MCI_CONTROL);
 if (val & (MCI_CONTROL_RESET | MCI_CONTROL_START_COMMAND))
  return -EIO;
 if (cmd && cmd_len)
  for (i = 0; i < cmd_len; i++)
   ddblwritel(link, cmd[i], MCI_COMMAND + i * 4);
 val |= (MCI_CONTROL_START_COMMAND | MCI_CONTROL_ENABLE_DONE_INTERRUPT);
 ddblwritel(link, val, MCI_CONTROL);

 stat = wait_for_completion_timeout(&state->base->completion, HZ);
 if (stat == 0) {
  dev_warn(state->base->dev, "MCI-%d: MCI timeout\n", state->nr);
  return -EIO;
 }
 if (res && res_len)
  for (i = 0; i < res_len; i++)
   res[i] = ddblreadl(link, MCI_RESULT + i * 4);
 return 0;
}
