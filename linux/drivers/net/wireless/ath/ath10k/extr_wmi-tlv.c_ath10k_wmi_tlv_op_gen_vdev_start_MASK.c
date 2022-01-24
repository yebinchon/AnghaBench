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
typedef  int u32 ;
struct wmi_vdev_start_request_arg {int ssid_len; int vdev_id; int bcn_intval; int dtim_period; int bcn_tx_rate; int bcn_tx_power; int disable_hw_ack; int /*<<< orphan*/  channel; int /*<<< orphan*/  ssid; scalar_t__ pmf_enabled; scalar_t__ hidden_ssid; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssid; void* ssid_len; } ;
struct wmi_tlv_vdev_start_cmd {TYPE_1__ ssid; void* disable_hw_ack; void* bcn_tx_power; void* bcn_tx_rate; void* flags; void* dtim_period; void* bcn_intval; void* vdev_id; } ;
struct wmi_tlv {void* len; void* tag; scalar_t__ value; } ;
struct wmi_channel {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int WMI_TLV_TAG_ARRAY_STRUCT ; 
 int WMI_TLV_TAG_STRUCT_CHANNEL ; 
 int WMI_TLV_TAG_STRUCT_VDEV_START_REQUEST_CMD ; 
 int WMI_VDEV_START_HIDDEN_SSID ; 
 int WMI_VDEV_START_PMF_ENABLED ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC5 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wmi_channel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC8(struct ath10k *ar,
				 const struct wmi_vdev_start_request_arg *arg,
				 bool restart)
{
	struct wmi_tlv_vdev_start_cmd *cmd;
	struct wmi_channel *ch;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	size_t len;
	void *ptr;
	u32 flags = 0;

	if (FUNC1(arg->hidden_ssid && !arg->ssid))
		return FUNC0(-EINVAL);
	if (FUNC1(arg->ssid_len > sizeof(cmd->ssid.ssid)))
		return FUNC0(-EINVAL);

	len = (sizeof(*tlv) + sizeof(*cmd)) +
	      (sizeof(*tlv) + sizeof(*ch)) +
	      (sizeof(*tlv) + 0);
	skb = FUNC5(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	if (arg->hidden_ssid)
		flags |= WMI_VDEV_START_HIDDEN_SSID;
	if (arg->pmf_enabled)
		flags |= WMI_VDEV_START_PMF_ENABLED;

	ptr = (void *)skb->data;

	tlv = ptr;
	tlv->tag = FUNC2(WMI_TLV_TAG_STRUCT_VDEV_START_REQUEST_CMD);
	tlv->len = FUNC2(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC3(arg->vdev_id);
	cmd->bcn_intval = FUNC3(arg->bcn_intval);
	cmd->dtim_period = FUNC3(arg->dtim_period);
	cmd->flags = FUNC3(flags);
	cmd->bcn_tx_rate = FUNC3(arg->bcn_tx_rate);
	cmd->bcn_tx_power = FUNC3(arg->bcn_tx_power);
	cmd->disable_hw_ack = FUNC3(arg->disable_hw_ack);

	if (arg->ssid) {
		cmd->ssid.ssid_len = FUNC3(arg->ssid_len);
		FUNC7(cmd->ssid.ssid, arg->ssid, arg->ssid_len);
	}

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	tlv = ptr;
	tlv->tag = FUNC2(WMI_TLV_TAG_STRUCT_CHANNEL);
	tlv->len = FUNC2(sizeof(*ch));
	ch = (void *)tlv->value;
	FUNC6(ch, &arg->channel);

	ptr += sizeof(*tlv);
	ptr += sizeof(*ch);

	tlv = ptr;
	tlv->tag = FUNC2(WMI_TLV_TAG_ARRAY_STRUCT);
	tlv->len = 0;

	/* Note: This is a nested TLV containing:
	 * [wmi_tlv][wmi_p2p_noa_descriptor][wmi_tlv]..
	 */

	ptr += sizeof(*tlv);
	ptr += 0;

	FUNC4(ar, ATH10K_DBG_WMI, "wmi tlv vdev start\n");
	return skb;
}