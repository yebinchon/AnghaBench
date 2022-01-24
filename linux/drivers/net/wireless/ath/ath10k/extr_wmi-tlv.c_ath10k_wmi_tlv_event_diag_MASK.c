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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_ARRAY_BYTE ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int) ; 
 int FUNC4 (void const*) ; 
 void** FUNC5 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void const**) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,void const*,int) ; 

__attribute__((used)) static int FUNC8(struct ath10k *ar,
				     struct sk_buff *skb)
{
	const void **tb;
	const void *data;
	int ret, len;

	tb = FUNC5(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC3(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	data = tb[WMI_TLV_TAG_ARRAY_BYTE];
	if (!data) {
		FUNC6(tb);
		return -EPROTO;
	}
	len = FUNC4(data);

	FUNC2(ar, ATH10K_DBG_WMI, "wmi tlv diag event len %d\n", len);
	FUNC7(ar, data, len);

	FUNC6(tb);
	return 0;
}