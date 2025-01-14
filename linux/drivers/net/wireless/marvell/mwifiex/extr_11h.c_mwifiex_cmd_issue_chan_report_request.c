
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mwifiex_radar_params {TYPE_4__* chandef; scalar_t__ cac_time_ms; } ;
struct mwifiex_private {int adapter; } ;
struct TYPE_6__ {int chan_width; int chan_num; void* start_freq; } ;
struct host_cmd_ds_chan_rpt_req {int msec_dwell_time; TYPE_2__ chan_desc; } ;
struct TYPE_5__ {struct host_cmd_ds_chan_rpt_req chan_rpt_req; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_1__ params; } ;
struct TYPE_8__ {TYPE_3__* chan; int width; } ;
struct TYPE_7__ {int hw_value; } ;


 int HostCmd_CMD_CHAN_REPORT_REQUEST ;
 int MSG ;
 int MWIFIEX_A_BAND_START_FREQ ;
 int S_DS_GEN ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (scalar_t__) ;
 int le16_unaligned_add_cpu (void**,int) ;
 int mwifiex_dbg (int ,int ,char*,...) ;

int mwifiex_cmd_issue_chan_report_request(struct mwifiex_private *priv,
       struct host_cmd_ds_command *cmd,
       void *data_buf)
{
 struct host_cmd_ds_chan_rpt_req *cr_req = &cmd->params.chan_rpt_req;
 struct mwifiex_radar_params *radar_params = (void *)data_buf;

 cmd->command = cpu_to_le16(HostCmd_CMD_CHAN_REPORT_REQUEST);
 cmd->size = cpu_to_le16(S_DS_GEN);
 le16_unaligned_add_cpu(&cmd->size,
          sizeof(struct host_cmd_ds_chan_rpt_req));

 cr_req->chan_desc.start_freq = cpu_to_le16(MWIFIEX_A_BAND_START_FREQ);
 cr_req->chan_desc.chan_num = radar_params->chandef->chan->hw_value;
 cr_req->chan_desc.chan_width = radar_params->chandef->width;
 cr_req->msec_dwell_time = cpu_to_le32(radar_params->cac_time_ms);

 if (radar_params->cac_time_ms)
  mwifiex_dbg(priv->adapter, MSG,
       "11h: issuing DFS Radar check for channel=%d\n",
       radar_params->chandef->chan->hw_value);
 else
  mwifiex_dbg(priv->adapter, MSG, "cancelling CAC\n");

 return 0;
}
