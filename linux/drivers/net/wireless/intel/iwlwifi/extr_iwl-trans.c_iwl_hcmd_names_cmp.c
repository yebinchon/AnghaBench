
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_hcmd_names {int cmd_id; } ;



__attribute__((used)) static int iwl_hcmd_names_cmp(const void *key, const void *elt)
{
 const struct iwl_hcmd_names *name = elt;
 u8 cmd1 = *(u8 *)key;
 u8 cmd2 = name->cmd_id;

 return (cmd1 - cmd2);
}
