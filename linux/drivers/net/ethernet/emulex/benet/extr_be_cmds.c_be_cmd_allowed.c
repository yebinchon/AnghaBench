
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct be_adapter {int cmd_privileges; } ;
struct TYPE_3__ {scalar_t__ opcode; scalar_t__ subsystem; int priv_mask; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* cmd_priv_map ;

__attribute__((used)) static bool be_cmd_allowed(struct be_adapter *adapter, u8 opcode, u8 subsystem)
{
 int i;
 int num_entries = ARRAY_SIZE(cmd_priv_map);
 u32 cmd_privileges = adapter->cmd_privileges;

 for (i = 0; i < num_entries; i++)
  if (opcode == cmd_priv_map[i].opcode &&
      subsystem == cmd_priv_map[i].subsystem)
   if (!(cmd_privileges & cmd_priv_map[i].priv_mask))
    return 0;

 return 1;
}
