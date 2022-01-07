
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int header; int member_0; } ;
struct dpni_rsp_get_attr {int wriop_version; int fs_key_size; int qos_key_size; int fs_entries; int qos_entries; int vlan_filter_entries; int mac_filter_entries; int num_tcs; int num_queues; int options; } ;
struct dpni_attr {void* wriop_version; int fs_key_size; int qos_key_size; void* fs_entries; int qos_entries; int vlan_filter_entries; int mac_filter_entries; int num_tcs; int num_queues; int options; } ;


 int DPNI_CMDID_GET_ATTR ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mc_encode_cmd_header (int ,int ,int ) ;
 int mc_send_command (struct fsl_mc_io*,struct fsl_mc_command*) ;

int dpni_get_attributes(struct fsl_mc_io *mc_io,
   u32 cmd_flags,
   u16 token,
   struct dpni_attr *attr)
{
 struct fsl_mc_command cmd = { 0 };
 struct dpni_rsp_get_attr *rsp_params;

 int err;


 cmd.header = mc_encode_cmd_header(DPNI_CMDID_GET_ATTR,
       cmd_flags,
       token);


 err = mc_send_command(mc_io, &cmd);
 if (err)
  return err;


 rsp_params = (struct dpni_rsp_get_attr *)cmd.params;
 attr->options = le32_to_cpu(rsp_params->options);
 attr->num_queues = rsp_params->num_queues;
 attr->num_tcs = rsp_params->num_tcs;
 attr->mac_filter_entries = rsp_params->mac_filter_entries;
 attr->vlan_filter_entries = rsp_params->vlan_filter_entries;
 attr->qos_entries = rsp_params->qos_entries;
 attr->fs_entries = le16_to_cpu(rsp_params->fs_entries);
 attr->qos_key_size = rsp_params->qos_key_size;
 attr->fs_key_size = rsp_params->fs_key_size;
 attr->wriop_version = le16_to_cpu(rsp_params->wriop_version);

 return 0;
}
