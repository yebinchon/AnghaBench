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
typedef  size_t u32 ;
struct wmi_tlv_bcn_tmpl_cmd {void* buf_len; void* tim_ie_offset; void* vdev_id; } ;
struct wmi_tlv_bcn_prb_info {scalar_t__ ies; void* erp; void* caps; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {size_t len; void* data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int WMI_TLV_TAG_ARRAY_BYTE ; 
 int WMI_TLV_TAG_STRUCT_BCN_PRB_INFO ; 
 int WMI_TLV_TAG_STRUCT_BCN_TMPL_CMD ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,size_t) ; 
 struct sk_buff* FUNC5 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,void*,size_t) ; 
 int FUNC7 (size_t,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC8(struct ath10k *ar, u32 vdev_id,
			       u32 tim_ie_offset, struct sk_buff *bcn,
			       u32 prb_caps, u32 prb_erp, void *prb_ies,
			       size_t prb_ies_len)
{
	struct wmi_tlv_bcn_tmpl_cmd *cmd;
	struct wmi_tlv_bcn_prb_info *info;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	void *ptr;
	size_t len;

	if (FUNC1(prb_ies_len > 0 && !prb_ies))
		return FUNC0(-EINVAL);

	len = sizeof(*tlv) + sizeof(*cmd) +
	      sizeof(*tlv) + sizeof(*info) + prb_ies_len +
	      sizeof(*tlv) + FUNC7(bcn->len, 4);
	skb = FUNC5(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;
	tlv = ptr;
	tlv->tag = FUNC2(WMI_TLV_TAG_STRUCT_BCN_TMPL_CMD);
	tlv->len = FUNC2(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC3(vdev_id);
	cmd->tim_ie_offset = FUNC3(tim_ie_offset);
	cmd->buf_len = FUNC3(bcn->len);

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	/* FIXME: prb_ies_len should be probably aligned to 4byte boundary but
	 * then it is then impossible to pass original ie len.
	 * This chunk is not used yet so if setting probe resp template yields
	 * problems with beaconing or crashes firmware look here.
	 */
	tlv = ptr;
	tlv->tag = FUNC2(WMI_TLV_TAG_STRUCT_BCN_PRB_INFO);
	tlv->len = FUNC2(sizeof(*info) + prb_ies_len);
	info = (void *)tlv->value;
	info->caps = FUNC3(prb_caps);
	info->erp = FUNC3(prb_erp);
	FUNC6(info->ies, prb_ies, prb_ies_len);

	ptr += sizeof(*tlv);
	ptr += sizeof(*info);
	ptr += prb_ies_len;

	tlv = ptr;
	tlv->tag = FUNC2(WMI_TLV_TAG_ARRAY_BYTE);
	tlv->len = FUNC2(FUNC7(bcn->len, 4));
	FUNC6(tlv->value, bcn->data, bcn->len);

	/* FIXME: Adjust TSF? */

	FUNC4(ar, ATH10K_DBG_WMI, "wmi tlv bcn tmpl vdev_id %i\n",
		   vdev_id);
	return skb;
}