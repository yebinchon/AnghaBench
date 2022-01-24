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
struct wmi_tlv_phyerr_ev {int /*<<< orphan*/  buf_len; int /*<<< orphan*/  tsf_u32; int /*<<< orphan*/  tsf_l32; int /*<<< orphan*/  num_phyerrs; } ;
struct wmi_phyerr_hdr_arg {void const* phyerrs; void* buf_len; void* tsf_u32; void* tsf_l32; void* num_phyerrs; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_ARRAY_BYTE ; 
 size_t WMI_TLV_TAG_STRUCT_COMB_PHYERR_RX_HDR ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 void** FUNC4 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void const**) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar,
						struct sk_buff *skb,
						struct wmi_phyerr_hdr_arg *arg)
{
	const void **tb;
	const struct wmi_tlv_phyerr_ev *ev;
	const void *phyerrs;
	int ret;

	tb = FUNC4(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC3(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_COMB_PHYERR_RX_HDR];
	phyerrs = tb[WMI_TLV_TAG_ARRAY_BYTE];

	if (!ev || !phyerrs) {
		FUNC5(tb);
		return -EPROTO;
	}

	arg->num_phyerrs  = FUNC2(ev->num_phyerrs);
	arg->tsf_l32 = FUNC2(ev->tsf_l32);
	arg->tsf_u32 = FUNC2(ev->tsf_u32);
	arg->buf_len = FUNC2(ev->buf_len);
	arg->phyerrs = phyerrs;

	FUNC5(tb);
	return 0;
}