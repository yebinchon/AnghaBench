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
struct wmi_tlv_prb_tmpl_cmd {void* buf_len; void* vdev_id; } ;
struct wmi_tlv_bcn_prb_info {scalar_t__ erp; scalar_t__ caps; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_ARRAY_BYTE ; 
 int WMI_TLV_TAG_STRUCT_BCN_PRB_INFO ; 
 int WMI_TLV_TAG_STRUCT_PRB_TMPL_CMD ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct ath10k *ar, u32 vdev_id,
			       struct sk_buff *prb)
{
	struct wmi_tlv_prb_tmpl_cmd *cmd;
	struct wmi_tlv_bcn_prb_info *info;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	void *ptr;
	size_t len;

	len = sizeof(*tlv) + sizeof(*cmd) +
	      sizeof(*tlv) + sizeof(*info) +
	      sizeof(*tlv) + FUNC6(prb->len, 4);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;
	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_PRB_TMPL_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC2(vdev_id);
	cmd->buf_len = FUNC2(prb->len);

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_BCN_PRB_INFO);
	tlv->len = FUNC1(sizeof(*info));
	info = (void *)tlv->value;
	info->caps = 0;
	info->erp = 0;

	ptr += sizeof(*tlv);
	ptr += sizeof(*info);

	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_ARRAY_BYTE);
	tlv->len = FUNC1(FUNC6(prb->len, 4));
	FUNC5(tlv->value, prb->data, prb->len);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv prb tmpl vdev_id %i\n",
		   vdev_id);
	return skb;
}