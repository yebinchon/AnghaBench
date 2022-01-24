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
struct wmi_tlv_pktlog_enable {int /*<<< orphan*/  filter; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_PDEV_PKTLOG_ENABLE_CMD ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar, u32 filter)
{
	struct wmi_tlv_pktlog_enable *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	void *ptr;
	size_t len;

	len = sizeof(*tlv) + sizeof(*cmd);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;
	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_PDEV_PKTLOG_ENABLE_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->filter = FUNC2(filter);

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv pktlog enable filter 0x%08x\n",
		   filter);
	return skb;
}