#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wmi_rdy_ev_arg {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  status; int /*<<< orphan*/  abi_version; int /*<<< orphan*/  sw_version; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unified_ready; } ;
struct ath10k {TYPE_1__ wmi; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (struct ath10k*,struct sk_buff*,struct wmi_rdy_ev_arg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_rdy_ev_arg arg = {};
	int ret;

	ret = FUNC3(ar, skb, &arg);
	if (ret) {
		FUNC2(ar, "failed to parse ready event: %d\n", ret);
		return ret;
	}

	FUNC1(ar, ATH10K_DBG_WMI,
		   "wmi event ready sw_version %u abi_version %u mac_addr %pM status %d\n",
		   FUNC0(arg.sw_version),
		   FUNC0(arg.abi_version),
		   arg.mac_addr,
		   FUNC0(arg.status));

	if (FUNC6(ar->mac_addr))
		FUNC5(ar->mac_addr, arg.mac_addr);
	FUNC4(&ar->wmi.unified_ready);
	return 0;
}