
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct update_nodes_workarea {int unit_address; } ;
struct cxl {TYPE_1__* guest; } ;
typedef int s32 ;
typedef int __be32 ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NODE_ACTION_MASK ;
 int NODE_COUNT_MASK ;



 int RTAS_DATA_BUF_SIZE ;
 int RTAS_UNKNOWN_SERVICE ;
 int be32_to_cpu (int ) ;
 int cpu_to_be64 (int ) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int pr_devel (char*,int,int) ;
 int rcall (int,char*,int ) ;
 int rtas_token (char*) ;
 int update_node (int ,int ) ;

__attribute__((used)) static int update_devicetree(struct cxl *adapter, s32 scope)
{
 struct update_nodes_workarea *unwa;
 u32 action, node_count;
 int token, rc, i;
 __be32 *data, drc_index, phandle;
 char *buf;

 token = rtas_token("ibm,update-nodes");
 if (token == RTAS_UNKNOWN_SERVICE)
  return -EINVAL;

 buf = kzalloc(RTAS_DATA_BUF_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 unwa = (struct update_nodes_workarea *)&buf[0];
 unwa->unit_address = cpu_to_be64(adapter->guest->handle);
 do {
  rc = rcall(token, buf, scope);
  if (rc && rc != 1)
   break;

  data = (__be32 *)buf + 4;
  while (be32_to_cpu(*data) & NODE_ACTION_MASK) {
   action = be32_to_cpu(*data) & NODE_ACTION_MASK;
   node_count = be32_to_cpu(*data) & NODE_COUNT_MASK;
   pr_devel("device reconfiguration - action: %#x, nodes: %#x\n",
     action, node_count);
   data++;

   for (i = 0; i < node_count; i++) {
    phandle = *data++;

    switch (action) {
    case 129:

     break;
    case 128:
     update_node(phandle, scope);
     break;
    case 130:

     drc_index = *data++;
     break;
    }
   }
  }
 } while (rc == 1);

 kfree(buf);
 return 0;
}
