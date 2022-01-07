
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union gve_adminq_command {int opcode; } ;
struct gve_priv {int dummy; } ;
typedef int cmd ;


 int GVE_ADMINQ_DECONFIGURE_DEVICE_RESOURCES ;
 int cpu_to_be32 (int ) ;
 int gve_adminq_execute_cmd (struct gve_priv*,union gve_adminq_command*) ;
 int memset (union gve_adminq_command*,int ,int) ;

int gve_adminq_deconfigure_device_resources(struct gve_priv *priv)
{
 union gve_adminq_command cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.opcode = cpu_to_be32(GVE_ADMINQ_DECONFIGURE_DEVICE_RESOURCES);

 return gve_adminq_execute_cmd(priv, &cmd);
}
