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
struct wmi_svc_avail_ev_arg {int /*<<< orphan*/  service_map_ext_len; int /*<<< orphan*/  service_map_ext; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ath10k*,struct sk_buff*,struct wmi_svc_avail_ev_arg*) ; 

void FUNC4(struct ath10k *ar, struct sk_buff *skb)
{
	int ret;
	struct wmi_svc_avail_ev_arg arg = {};

	ret = FUNC3(ar, skb, &arg);
	if (ret) {
		FUNC1(ar, "failed to parse service available event: %d\n",
			    ret);
	}

	FUNC2(ar, arg.service_map_ext, ar->wmi.svc_map,
			       FUNC0(arg.service_map_ext_len));
}