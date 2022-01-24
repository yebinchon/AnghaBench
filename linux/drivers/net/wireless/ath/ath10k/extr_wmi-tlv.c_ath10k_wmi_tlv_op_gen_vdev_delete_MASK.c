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
struct wmi_vdev_delete_cmd {int /*<<< orphan*/  vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_VDEV_DELETE_CMD ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC4 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 vdev_id)
{
	struct wmi_vdev_delete_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;

	skb = FUNC4(ar, sizeof(*tlv) + sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (void *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_VDEV_DELETE_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC2(vdev_id);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv vdev delete\n");
	return skb;
}