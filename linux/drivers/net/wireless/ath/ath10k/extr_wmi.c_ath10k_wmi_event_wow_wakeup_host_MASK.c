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
struct wmi_wow_ev_arg {int /*<<< orphan*/  wake_reason; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wakeup_completed; } ;
struct ath10k {TYPE_1__ wow; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_WMI ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,struct wmi_wow_ev_arg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ath10k *ar, struct sk_buff *skb)
{
	struct wmi_wow_ev_arg ev = {};
	int ret;

	FUNC3(&ar->wow.wakeup_completed);

	ret = FUNC2(ar, skb, &ev);
	if (ret) {
		FUNC1(ar, "failed to parse wow wakeup event: %d\n", ret);
		return;
	}

	FUNC0(ar, ATH10K_DBG_WMI, "wow wakeup host reason %s\n",
		   FUNC4(ev.wake_reason));
}