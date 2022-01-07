
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_cmd_set_primary_mac_addr {int * mac_addr; } ;


 int DPNI_CMDID_SET_PRIM_MAC ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_set_primary_mac_addr(struct fsl_mc_io *mc_io,
         u32 cmd_flags,
         u16 token,
         const u8 mac_addr[6])
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_cmd_set_primary_mac_addr *cmd_params;
 int i;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_SET_PRIM_MAC,
       cmd_flags,
       token);
 cmd_params = (struct dpni_cmd_set_primary_mac_addr *)cmd.params;
 for (i = 0; i < 6; i++)
  cmd_params->mac_addr[i] = mac_addr[5 - i];


 return mc_send_command(mc_io, &cmd);
}
