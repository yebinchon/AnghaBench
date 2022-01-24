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
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct wmi_peer_set_param_cmd {TYPE_1__ peer_macaddr; void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_peer_param { ____Placeholder_wmi_peer_param } wmi_peer_param ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_PEER_SET_PARAM_CMD ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/  const*,int,int) ; 
 struct sk_buff* FUNC4 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct ath10k *ar, u32 vdev_id,
				     const u8 *peer_addr,
				     enum wmi_peer_param param_id,
				     u32 param_value)
{
	struct wmi_peer_set_param_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;

	skb = FUNC4(ar, sizeof(*tlv) + sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (void *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_PEER_SET_PARAM_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC2(vdev_id);
	cmd->param_id = FUNC2(param_id);
	cmd->param_value = FUNC2(param_value);
	FUNC5(cmd->peer_macaddr.addr, peer_addr);

	FUNC3(ar, ATH10K_DBG_WMI,
		   "wmi tlv vdev %d peer %pM set param %d value 0x%x\n",
		   vdev_id, peer_addr, param_id, param_value);
	return skb;
}