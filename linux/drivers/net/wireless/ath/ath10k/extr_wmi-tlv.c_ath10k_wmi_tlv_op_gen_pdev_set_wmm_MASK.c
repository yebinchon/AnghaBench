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
struct wmi_wmm_params_all_arg {int /*<<< orphan*/  ac_vo; int /*<<< orphan*/  ac_vi; int /*<<< orphan*/  ac_bk; int /*<<< orphan*/  ac_be; } ;
struct wmi_wmm_params {int dummy; } ;
struct wmi_tlv_pdev_set_wmm_cmd {int dummy; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int WMI_TLV_TAG_STRUCT_PDEV_SET_WMM_PARAMS_CMD ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 struct sk_buff* FUNC3 (struct ath10k*,size_t) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *
FUNC5(struct ath10k *ar,
				   const struct wmi_wmm_params_all_arg *arg)
{
	struct wmi_tlv_pdev_set_wmm_cmd *cmd;
	struct wmi_wmm_params *wmm;
	struct wmi_tlv *tlv;
	struct sk_buff *skb;
	size_t len;
	void *ptr;

	len = (sizeof(*tlv) + sizeof(*cmd)) +
	      (4 * (sizeof(*tlv) + sizeof(*wmm)));
	skb = FUNC3(ar, len);
	if (!skb)
		return FUNC0(-ENOMEM);

	ptr = (void *)skb->data;

	tlv = ptr;
	tlv->tag = FUNC1(WMI_TLV_TAG_STRUCT_PDEV_SET_WMM_PARAMS_CMD);
	tlv->len = FUNC1(sizeof(*cmd));
	cmd = (void *)tlv->value;

	/* nothing to set here */

	ptr += sizeof(*tlv);
	ptr += sizeof(*cmd);

	ptr = FUNC4(ptr, &arg->ac_be);
	ptr = FUNC4(ptr, &arg->ac_bk);
	ptr = FUNC4(ptr, &arg->ac_vi);
	ptr = FUNC4(ptr, &arg->ac_vo);

	FUNC2(ar, ATH10K_DBG_WMI, "wmi tlv pdev set wmm\n");
	return skb;
}