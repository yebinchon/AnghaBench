
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_config {int command_groups_size; struct iwl_hcmd_arr* command_groups; } ;
struct iwl_hcmd_arr {int size; TYPE_1__* arr; } ;
struct TYPE_2__ {scalar_t__ cmd_id; } ;



int iwl_cmd_groups_verify_sorted(const struct iwl_trans_config *trans)
{
 int i, j;
 const struct iwl_hcmd_arr *arr;

 for (i = 0; i < trans->command_groups_size; i++) {
  arr = &trans->command_groups[i];
  if (!arr->arr)
   continue;
  for (j = 0; j < arr->size - 1; j++)
   if (arr->arr[j].cmd_id > arr->arr[j + 1].cmd_id)
    return -1;
 }
 return 0;
}
