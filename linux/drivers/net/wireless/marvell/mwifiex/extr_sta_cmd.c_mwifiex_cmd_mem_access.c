
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mwifiex_ds_mem_rw {int value; int addr; } ;
struct host_cmd_ds_mem_access {void* value; void* addr; void* action; } ;
struct TYPE_2__ {int mem; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 scalar_t__ HostCmd_CMD_MEM_ACCESS ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static int
mwifiex_cmd_mem_access(struct host_cmd_ds_command *cmd, u16 cmd_action,
         void *pdata_buf)
{
 struct mwifiex_ds_mem_rw *mem_rw = (void *)pdata_buf;
 struct host_cmd_ds_mem_access *mem_access = (void *)&cmd->params.mem;

 cmd->command = cpu_to_le16(HostCmd_CMD_MEM_ACCESS);
 cmd->size = cpu_to_le16(sizeof(struct host_cmd_ds_mem_access) +
    S_DS_GEN);

 mem_access->action = cpu_to_le16(cmd_action);
 mem_access->addr = cpu_to_le32(mem_rw->addr);
 mem_access->value = cpu_to_le32(mem_rw->value);

 return 0;
}
