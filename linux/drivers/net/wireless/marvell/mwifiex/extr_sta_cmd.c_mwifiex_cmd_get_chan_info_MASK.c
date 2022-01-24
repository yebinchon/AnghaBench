#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct mwifiex_ie_types_header {int dummy; } ;
struct TYPE_3__ {void* len; void* type; } ;
struct host_cmd_tlv_channel_band {TYPE_1__ header; } ;
struct host_cmd_ds_sta_configure {void* action; scalar_t__ tlv_buffer; } ;
struct TYPE_4__ {struct host_cmd_ds_sta_configure sta_cfg; } ;
struct host_cmd_ds_command {void* size; void* command; TYPE_2__ params; } ;

/* Variables and functions */
 int HostCmd_CMD_STA_CONFIGURE ; 
 int S_DS_GEN ; 
 int TLV_TYPE_CHANNELBANDLIST ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct host_cmd_tlv_channel_band*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct host_cmd_ds_command *cmd,
				     u16 cmd_action)
{
	struct host_cmd_ds_sta_configure *sta_cfg_cmd = &cmd->params.sta_cfg;
	struct host_cmd_tlv_channel_band *tlv_band_channel =
	(struct host_cmd_tlv_channel_band *)sta_cfg_cmd->tlv_buffer;

	cmd->command = FUNC0(HostCmd_CMD_STA_CONFIGURE);
	cmd->size = FUNC0(sizeof(*sta_cfg_cmd) +
				sizeof(*tlv_band_channel) + S_DS_GEN);
	sta_cfg_cmd->action = FUNC0(cmd_action);
	FUNC1(tlv_band_channel, 0, sizeof(*tlv_band_channel));
	tlv_band_channel->header.type = FUNC0(TLV_TYPE_CHANNELBANDLIST);
	tlv_band_channel->header.len  = FUNC0(sizeof(*tlv_band_channel) -
					sizeof(struct mwifiex_ie_types_header));

	return 0;
}