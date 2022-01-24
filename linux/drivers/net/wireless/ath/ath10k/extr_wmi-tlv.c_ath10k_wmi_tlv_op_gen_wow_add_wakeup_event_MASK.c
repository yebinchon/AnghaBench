#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct wmi_tlv_wow_add_del_event_cmd {void* event_bitmap; void* is_add; void* vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef  enum wmi_wow_wakeup_event { ____Placeholder_wmi_wow_wakeup_event } wmi_wow_wakeup_event ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_WOW_ADD_DEL_EVT_CMD ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct ath10k *ar,
					   u32 vdev_id,
					   enum wmi_wow_wakeup_event event,
					   u32 enable)
{
	struct wmi_tlv_wow_add_del_event_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	size_t len;

	len = sizeof(*tlv) + sizeof(*cmd);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (struct wmi_tlv *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_WOW_ADD_DEL_EVT_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;

	cmd->vdev_id = FUNC2(vdev_id);
	cmd->is_add = FUNC2(enable);
	cmd->event_bitmap = FUNC2(1 << event);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv wow add wakeup event %s enable %d vdev_id %d\n",
		   FUNC5(event), enable, vdev_id);
	return skb;
}