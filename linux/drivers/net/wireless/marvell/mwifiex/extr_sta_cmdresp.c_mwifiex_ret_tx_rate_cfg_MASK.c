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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
typedef  int u16 ;
struct mwifiex_rate_scope {int /*<<< orphan*/ * vht_mcs_rate_bitmap; int /*<<< orphan*/ * ht_mcs_rate_bitmap; int /*<<< orphan*/  ofdm_rate_bitmap; int /*<<< orphan*/  hr_dsss_rate_bitmap; } ;
struct mwifiex_private {scalar_t__ data_rate; scalar_t__ is_data_rate_auto; void** bitmap_rates; TYPE_2__* adapter; } ;
struct mwifiex_ie_types_header {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct host_cmd_ds_tx_rate_cfg {int dummy; } ;
struct TYPE_3__ {struct host_cmd_ds_tx_rate_cfg tx_rate_cfg; } ;
struct host_cmd_ds_command {int /*<<< orphan*/  size; TYPE_1__ params; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_api_ver; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_GET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11_TX_RATE_QUERY ; 
 int /*<<< orphan*/  MWIFIEX_FW_V15 ; 
 void* S_DS_GEN ; 
#define  TLV_TYPE_RATE_SCOPE 128 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mwifiex_private*) ; 
 int FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_private *priv,
				   struct host_cmd_ds_command *resp)
{
	struct host_cmd_ds_tx_rate_cfg *rate_cfg = &resp->params.tx_rate_cfg;
	struct mwifiex_rate_scope *rate_scope;
	struct mwifiex_ie_types_header *head;
	u16 tlv, tlv_buf_len, tlv_buf_left;
	u8 *tlv_buf;
	u32 i;

	tlv_buf = ((u8 *)rate_cfg) + sizeof(struct host_cmd_ds_tx_rate_cfg);
	tlv_buf_left = FUNC1(resp->size) - S_DS_GEN - sizeof(*rate_cfg);

	while (tlv_buf_left >= sizeof(*head)) {
		head = (struct mwifiex_ie_types_header *)tlv_buf;
		tlv = FUNC1(head->type);
		tlv_buf_len = FUNC1(head->len);

		if (tlv_buf_left < (sizeof(*head) + tlv_buf_len))
			break;

		switch (tlv) {
		case TLV_TYPE_RATE_SCOPE:
			rate_scope = (struct mwifiex_rate_scope *) tlv_buf;
			priv->bitmap_rates[0] =
				FUNC1(rate_scope->hr_dsss_rate_bitmap);
			priv->bitmap_rates[1] =
				FUNC1(rate_scope->ofdm_rate_bitmap);
			for (i = 0;
			     i < FUNC0(rate_scope->ht_mcs_rate_bitmap);
			     i++)
				priv->bitmap_rates[2 + i] =
					FUNC1(rate_scope->
						    ht_mcs_rate_bitmap[i]);

			if (priv->adapter->fw_api_ver == MWIFIEX_FW_V15) {
				for (i = 0; i < FUNC0(rate_scope->
							   vht_mcs_rate_bitmap);
				     i++)
					priv->bitmap_rates[10 + i] =
					    FUNC1(rate_scope->
							vht_mcs_rate_bitmap[i]);
			}
			break;
			/* Add RATE_DROP tlv here */
		}

		tlv_buf += (sizeof(*head) + tlv_buf_len);
		tlv_buf_left -= (sizeof(*head) + tlv_buf_len);
	}

	priv->is_data_rate_auto = FUNC2(priv);

	if (priv->is_data_rate_auto)
		priv->data_rate = 0;
	else
		return FUNC3(priv, HostCmd_CMD_802_11_TX_RATE_QUERY,
					HostCmd_ACT_GEN_GET, 0, NULL, false);

	return 0;
}