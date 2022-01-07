
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mwifiex_scan_cmd_config {int tlv_buf_len; int tlv_buf; int specific_bssid; int bss_mode; } ;
struct host_cmd_ds_802_11_scan {int tlv_buffer; int bssid; int bss_mode; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_scan scan; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;


 int HostCmd_CMD_802_11_SCAN ;
 scalar_t__ S_DS_GEN ;
 void* cpu_to_le16 (int ) ;
 int memcpy (int ,int ,int) ;

int mwifiex_cmd_802_11_scan(struct host_cmd_ds_command *cmd,
       struct mwifiex_scan_cmd_config *scan_cfg)
{
 struct host_cmd_ds_802_11_scan *scan_cmd = &cmd->params.scan;


 scan_cmd->bss_mode = scan_cfg->bss_mode;
 memcpy(scan_cmd->bssid, scan_cfg->specific_bssid,
        sizeof(scan_cmd->bssid));
 memcpy(scan_cmd->tlv_buffer, scan_cfg->tlv_buf, scan_cfg->tlv_buf_len);

 cmd->command = cpu_to_le16(HostCmd_CMD_802_11_SCAN);


 cmd->size = cpu_to_le16((u16) (sizeof(scan_cmd->bss_mode)
       + sizeof(scan_cmd->bssid)
       + scan_cfg->tlv_buf_len + S_DS_GEN));

 return 0;
}
