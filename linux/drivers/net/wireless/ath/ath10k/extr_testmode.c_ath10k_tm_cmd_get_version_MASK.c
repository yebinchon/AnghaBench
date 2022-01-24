#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wmi_op_version; } ;
struct TYPE_5__ {TYPE_1__ fw_file; } ;
struct ath10k {TYPE_2__ normal_mode_fw; TYPE_3__* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_TESTMODE ; 
 int /*<<< orphan*/  ATH10K_TESTMODE_VERSION_MAJOR ; 
 int /*<<< orphan*/  ATH10K_TESTMODE_VERSION_MINOR ; 
 int /*<<< orphan*/  ATH10K_TM_ATTR_VERSION_MAJOR ; 
 int /*<<< orphan*/  ATH10K_TM_ATTR_VERSION_MINOR ; 
 int /*<<< orphan*/  ATH10K_TM_ATTR_WMI_OP_VERSION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, struct nlattr *tb[])
{
	struct sk_buff *skb;
	int ret;

	FUNC0(ar, ATH10K_DBG_TESTMODE,
		   "testmode cmd get version_major %d version_minor %d\n",
		   ATH10K_TESTMODE_VERSION_MAJOR,
		   ATH10K_TESTMODE_VERSION_MINOR);

	skb = FUNC1(ar->hw->wiphy,
						FUNC5(sizeof(u32)));
	if (!skb)
		return -ENOMEM;

	ret = FUNC4(skb, ATH10K_TM_ATTR_VERSION_MAJOR,
			  ATH10K_TESTMODE_VERSION_MAJOR);
	if (ret) {
		FUNC3(skb);
		return ret;
	}

	ret = FUNC4(skb, ATH10K_TM_ATTR_VERSION_MINOR,
			  ATH10K_TESTMODE_VERSION_MINOR);
	if (ret) {
		FUNC3(skb);
		return ret;
	}

	ret = FUNC4(skb, ATH10K_TM_ATTR_WMI_OP_VERSION,
			  ar->normal_mode_fw.fw_file.wmi_op_version);
	if (ret) {
		FUNC3(skb);
		return ret;
	}

	return FUNC2(skb);
}