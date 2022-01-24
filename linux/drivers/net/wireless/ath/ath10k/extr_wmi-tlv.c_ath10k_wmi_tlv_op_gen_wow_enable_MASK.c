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
struct wmi_tlv_wow_enable_cmd {void* pause_iface_config; void* enable; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  link_can_suspend; } ;
struct ath10k {TYPE_1__ bus_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_WOW_ENABLE_CMD ; 
 int WOW_IFACE_PAUSE_DISABLED ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar)
{
	struct wmi_tlv_wow_enable_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	size_t len;

	len = sizeof(*tlv) + sizeof(*cmd);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (struct wmi_tlv *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_WOW_ENABLE_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;

	cmd->enable = FUNC2(1);
	if (!ar->bus_param.link_can_suspend)
		cmd->pause_iface_config = FUNC2(WOW_IFACE_PAUSE_DISABLED);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv wow enable\n");
	return skb;
}