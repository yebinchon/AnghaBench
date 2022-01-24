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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ const u32 ;
struct wmi_tlv_p2p_go_bcn_ie {void* ie_len; void* vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_ARRAY_BYTE ; 
 int WMI_TLV_TAG_STRUCT_P2P_GO_SET_BEACON_IE ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__ const) ; 
 struct sk_buff* FUNC4 (struct ath10k*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__ const*,scalar_t__ const) ; 
 int FUNC6 (scalar_t__ const,int) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct ath10k *ar, u32 vdev_id,
				    const u8 *p2p_ie)
{
	struct wmi_tlv_p2p_go_bcn_ie *cmd;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	void *ptr;
	size_t len;

	len = sizeof(*tlv) + sizeof(*cmd) +
	      sizeof(*tlv) + FUNC6(p2p_ie[1] + 2, 4);
	skb = FUNC4(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;
	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_P2P_GO_SET_BEACON_IE);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;
	cmd->vdev_id = FUNC2(vdev_id);
	cmd->ie_len = FUNC2(p2p_ie[1] + 2);

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_ARRAY_BYTE);
	tlv->len = FUNC1(FUNC6(p2p_ie[1] + 2, 4));
	FUNC5(tlv->value, p2p_ie, p2p_ie[1] + 2);

	ptr += sizeof(*tlv);
	ptr += FUNC6(p2p_ie[1] + 2, 4);

	FUNC3(ar, ATH10K_DBG_WMI, "wmi tlv p2p go bcn ie for vdev %i\n",
		   vdev_id);
	return skb;
}