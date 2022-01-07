
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct iwl_trans {size_t command_groups_size; struct iwl_hcmd_arr* command_groups; } ;
struct iwl_hcmd_names {char const* cmd_name; } ;
struct iwl_hcmd_arr {int size; int arr; } ;


 struct iwl_hcmd_names* bsearch (size_t*,int ,int ,size_t,int ) ;
 size_t iwl_cmd_groupid (int ) ;
 size_t iwl_cmd_opcode (int ) ;
 int iwl_hcmd_names_cmp ;

const char *iwl_get_cmd_string(struct iwl_trans *trans, u32 id)
{
 u8 grp, cmd;
 struct iwl_hcmd_names *ret;
 const struct iwl_hcmd_arr *arr;
 size_t size = sizeof(struct iwl_hcmd_names);

 grp = iwl_cmd_groupid(id);
 cmd = iwl_cmd_opcode(id);

 if (!trans->command_groups || grp >= trans->command_groups_size ||
     !trans->command_groups[grp].arr)
  return "UNKNOWN";

 arr = &trans->command_groups[grp];
 ret = bsearch(&cmd, arr->arr, arr->size, size, iwl_hcmd_names_cmp);
 if (!ret)
  return "UNKNOWN";
 return ret->cmd_name;
}
