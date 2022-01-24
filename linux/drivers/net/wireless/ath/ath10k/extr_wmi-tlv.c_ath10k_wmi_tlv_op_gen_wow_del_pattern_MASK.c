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
typedef  int /*<<< orphan*/  u32 ;
struct wmi_tlv_wow_del_pattern_cmd {void* pattern_type; void* pattern_id; void* vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_WOW_DEL_PATTERN_CMD ; 
 int /*<<< orphan*/  WOW_BITMAP_PATTERN ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 vdev_id,
				      u32 pattern_id)
{
	struct wmi_tlv_wow_del_pattern_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	size_t len;

	len = sizeof(*tlv) + sizeof(*cmd);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (struct wmi_tlv *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_WOW_DEL_PATTERN_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;

	cmd->vdev_id = FUNC2(vdev_id);
	cmd->pattern_id = FUNC2(pattern_id);
	cmd->pattern_type = FUNC2(WOW_BITMAP_PATTERN);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv wow del pattern vdev_id %d pattern_id %d\n",
		   vdev_id, pattern_id);
	return skb;
}