#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_rx_packet {int dummy; } ;
struct iwl_host_cmd {struct iwl_rx_packet* resp_pkt; int /*<<< orphan*/  id; int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  flags; } ;
struct iwl_fw_runtime {TYPE_3__* trans; TYPE_1__* fw; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {scalar_t__ device_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int ERFKILL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_fw_runtime*,char*) ; 
 scalar_t__ IWL_DEVICE_FAMILY_22000 ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG ; 
 int /*<<< orphan*/  SHARED_MEM_CFG ; 
 int /*<<< orphan*/  SHARED_MEM_CFG_CMD ; 
 int /*<<< orphan*/  SYSTEM_GROUP ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_fw_runtime*,struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_fw_runtime*,struct iwl_rx_packet*) ; 
 int FUNC7 (TYPE_3__*,struct iwl_host_cmd*) ; 

void FUNC8(struct iwl_fw_runtime *fwrt)
{
	struct iwl_host_cmd cmd = {
		.flags = CMD_WANT_SKB,
		.data = NULL, 
		.len = 0, 
	};
	struct iwl_rx_packet *pkt;
	int ret;

	if (FUNC2(&fwrt->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG))
		cmd.id = FUNC3(SHARED_MEM_CFG_CMD, SYSTEM_GROUP, 0);
	else
		cmd.id = SHARED_MEM_CFG;

	ret = FUNC7(fwrt->trans, &cmd);

	if (ret) {
		FUNC1(ret != -ERFKILL,
		     "Could not send the SMEM command: %d\n", ret);
		return;
	}

	pkt = cmd.resp_pkt;
	if (fwrt->trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22000)
		FUNC6(fwrt, pkt);
	else
		FUNC5(fwrt, pkt);

	FUNC0(fwrt, "SHARED MEM CFG: got memory offsets/sizes\n");

	FUNC4(&cmd);
}