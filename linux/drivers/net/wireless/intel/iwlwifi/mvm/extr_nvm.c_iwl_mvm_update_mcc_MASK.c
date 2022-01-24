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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_mcc_update_resp_v3 {int cap; int /*<<< orphan*/  channels; int /*<<< orphan*/  n_channels; int /*<<< orphan*/  geo_info; int /*<<< orphan*/  time; int /*<<< orphan*/  source_id; void* mcc; int /*<<< orphan*/  status; } ;
struct iwl_mcc_update_resp {void* mcc; int /*<<< orphan*/  status; int /*<<< orphan*/  channels; int /*<<< orphan*/  n_channels; int /*<<< orphan*/  geo_info; int /*<<< orphan*/  time; int /*<<< orphan*/  source_id; void* cap; } ;
struct iwl_mcc_update_cmd {void* mcc; int /*<<< orphan*/  source_id; } ;
struct iwl_host_cmd {int* len; struct iwl_rx_packet* resp_pkt; int /*<<< orphan*/  data; int /*<<< orphan*/  flags; int /*<<< orphan*/  id; } ;
typedef  enum iwl_mcc_source { ____Placeholder_iwl_mcc_source } iwl_mcc_source ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_WANT_SKB ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct iwl_mcc_update_resp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,char const,char const,int,...) ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_MCC_UPDATE_11AX_SUPPORT ; 
 int /*<<< orphan*/  MCC_UPDATE_CMD ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (char const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (struct iwl_mvm*,struct iwl_host_cmd*) ; 
 struct iwl_mcc_update_resp* FUNC9 (struct iwl_mcc_update_resp*,int,int /*<<< orphan*/ ) ; 
 struct iwl_mcc_update_resp* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct iwl_mcc_update_resp *
FUNC14(struct iwl_mvm *mvm, const char *alpha2,
		   enum iwl_mcc_source src_id)
{
	struct iwl_mcc_update_cmd mcc_update_cmd = {
		.mcc = FUNC4(alpha2[0] << 8 | alpha2[1]),
		.source_id = (u8)src_id,
	};
	struct iwl_mcc_update_resp *resp_cp;
	struct iwl_rx_packet *pkt;
	struct iwl_host_cmd cmd = {
		.id = MCC_UPDATE_CMD,
		.flags = CMD_WANT_SKB,
		.data = &mcc_update_cmd ,
	};

	int ret;
	u32 status;
	int resp_len, n_channels;
	u16 mcc;

	if (FUNC2(!FUNC7(mvm)))
		return FUNC0(-EOPNOTSUPP);

	cmd.len[0] = sizeof(struct iwl_mcc_update_cmd);

	FUNC1(mvm, "send MCC update to FW with '%c%c' src = %d\n",
		      alpha2[0], alpha2[1], src_id);

	ret = FUNC8(mvm, &cmd);
	if (ret)
		return FUNC0(ret);

	pkt = cmd.resp_pkt;

	/* Extract MCC response */
	if (FUNC5(&mvm->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_MCC_UPDATE_11AX_SUPPORT)) {
		struct iwl_mcc_update_resp *mcc_resp = (void *)pkt->data;

		n_channels =  FUNC3(mcc_resp->n_channels);
		resp_len = sizeof(struct iwl_mcc_update_resp) +
			   n_channels * sizeof(__le32);
		resp_cp = FUNC9(mcc_resp, resp_len, GFP_KERNEL);
		if (!resp_cp) {
			resp_cp = FUNC0(-ENOMEM);
			goto exit;
		}
	} else {
		struct iwl_mcc_update_resp_v3 *mcc_resp_v3 = (void *)pkt->data;

		n_channels =  FUNC3(mcc_resp_v3->n_channels);
		resp_len = sizeof(struct iwl_mcc_update_resp) +
			   n_channels * sizeof(__le32);
		resp_cp = FUNC10(resp_len, GFP_KERNEL);
		if (!resp_cp) {
			resp_cp = FUNC0(-ENOMEM);
			goto exit;
		}

		resp_cp->status = mcc_resp_v3->status;
		resp_cp->mcc = mcc_resp_v3->mcc;
		resp_cp->cap = FUNC4(mcc_resp_v3->cap);
		resp_cp->source_id = mcc_resp_v3->source_id;
		resp_cp->time = mcc_resp_v3->time;
		resp_cp->geo_info = mcc_resp_v3->geo_info;
		resp_cp->n_channels = mcc_resp_v3->n_channels;
		FUNC13(resp_cp->channels, mcc_resp_v3->channels,
		       n_channels * sizeof(__le32));
	}

	status = FUNC12(resp_cp->status);

	mcc = FUNC11(resp_cp->mcc);

	/* W/A for a FW/NVM issue - returns 0x00 for the world domain */
	if (mcc == 0) {
		mcc = 0x3030;  /* "00" - world */
		resp_cp->mcc = FUNC4(mcc);
	}

	FUNC1(mvm,
		      "MCC response status: 0x%x. new MCC: 0x%x ('%c%c') n_chans: %d\n",
		      status, mcc, mcc >> 8, mcc & 0xff, n_channels);

exit:
	FUNC6(&cmd);
	return resp_cp;
}