#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_int_sta {int /*<<< orphan*/  tfd_queue_msk; int /*<<< orphan*/  type; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_add_sta_cmd {int /*<<< orphan*/  addr; int /*<<< orphan*/  tid_disable_tx; void* tfd_queue_msk; int /*<<< orphan*/  station_type; void* mac_id_n_color; int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {TYPE_1__* fw; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA ; 
#define  ADD_STA_SUCCESS 128 
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IWL_ADD_STA_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_STA_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_add_sta_cmd*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm_add_sta_cmd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct iwl_mvm *mvm,
				      struct iwl_mvm_int_sta *sta,
				      const u8 *addr,
				      u16 mac_id, u16 color)
{
	struct iwl_mvm_add_sta_cmd cmd;
	int ret;
	u32 status = ADD_STA_SUCCESS;

	FUNC9(&mvm->mutex);

	FUNC11(&cmd, 0, sizeof(cmd));
	cmd.sta_id = sta->sta_id;
	cmd.mac_id_n_color = FUNC4(FUNC0(mac_id,
							     color));
	if (FUNC5(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
		cmd.station_type = sta->type;

	if (!FUNC7(mvm))
		cmd.tfd_queue_msk = FUNC4(sta->tfd_queue_msk);
	cmd.tid_disable_tx = FUNC3(0xffff);

	if (addr)
		FUNC10(cmd.addr, addr, ETH_ALEN);

	ret = FUNC8(mvm, ADD_STA,
					  FUNC6(mvm),
					  &cmd, &status);
	if (ret)
		return ret;

	switch (status & IWL_ADD_STA_STATUS_MASK) {
	case ADD_STA_SUCCESS:
		FUNC1(mvm, "Internal station added.\n");
		return 0;
	default:
		ret = -EIO;
		FUNC2(mvm, "Add internal station failed, status=0x%x\n",
			status);
		break;
	}
	return ret;
}