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
struct wmi_tlv_p2p_noa_ev {int /*<<< orphan*/  vdev_id; } ;
struct wmi_p2p_noa_info {int /*<<< orphan*/  num_descriptors; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_STRUCT_P2P_NOA_EVENT ; 
 size_t WMI_TLV_TAG_STRUCT_P2P_NOA_INFO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int,struct wmi_p2p_noa_info const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,char*,int) ; 
 void** FUNC6 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void const**) ; 

__attribute__((used)) static int FUNC8(struct ath10k *ar,
					struct sk_buff *skb)
{
	const void **tb;
	const struct wmi_tlv_p2p_noa_ev *ev;
	const struct wmi_p2p_noa_info *noa;
	int ret, vdev_id;

	tb = FUNC6(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC5(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_P2P_NOA_EVENT];
	noa = tb[WMI_TLV_TAG_STRUCT_P2P_NOA_INFO];

	if (!ev || !noa) {
		FUNC7(tb);
		return -EPROTO;
	}

	vdev_id = FUNC2(ev->vdev_id);

	FUNC3(ar, ATH10K_DBG_WMI,
		   "wmi tlv p2p noa vdev_id %i descriptors %hhu\n",
		   vdev_id, noa->num_descriptors);

	FUNC4(ar, vdev_id, noa);
	FUNC7(tb);
	return 0;
}