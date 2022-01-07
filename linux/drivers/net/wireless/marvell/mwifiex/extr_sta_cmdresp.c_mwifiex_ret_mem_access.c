
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* value; void* addr; } ;
struct mwifiex_private {TYPE_2__ mem_rw; } ;
struct host_cmd_ds_mem_access {int value; int addr; } ;
struct TYPE_3__ {int mem; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static int
mwifiex_ret_mem_access(struct mwifiex_private *priv,
         struct host_cmd_ds_command *resp, void *pioctl_buf)
{
 struct host_cmd_ds_mem_access *mem = (void *)&resp->params.mem;

 priv->mem_rw.addr = le32_to_cpu(mem->addr);
 priv->mem_rw.value = le32_to_cpu(mem->value);

 return 0;
}
