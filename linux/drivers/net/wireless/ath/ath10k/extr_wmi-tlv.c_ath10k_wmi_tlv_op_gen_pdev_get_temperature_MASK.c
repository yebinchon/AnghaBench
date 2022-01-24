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
struct wmi_tlv_pdev_get_temp_cmd {int dummy; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_PDEV_GET_TEMPERATURE_CMD ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC4(struct ath10k *ar)
{
	struct wmi_tlv_pdev_get_temp_cmd *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;

	skb = FUNC3(ar, sizeof(*tlv) + sizeof(*cmd));
	if (!skb)
		return FUNC0(-ENOMEM);

	tlv = (void *)skb->data;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_PDEV_GET_TEMPERATURE_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	FUNC2(ar, ATH10K_DBG_WMI, "wmi pdev get temperature tlv\n");
	return skb;
}