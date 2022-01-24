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
struct wmi_wmm_params_all_arg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdev_set_wmm_params_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_pdev_set_wmm ) (struct ath10k*,struct wmi_wmm_params_all_arg const*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct ath10k*,struct wmi_wmm_params_all_arg const*) ; 

__attribute__((used)) static inline int
FUNC4(struct ath10k *ar,
			       const struct wmi_wmm_params_all_arg *arg)
{
	struct sk_buff *skb;

	if (!ar->wmi.ops->gen_pdev_set_wmm)
		return -EOPNOTSUPP;

	skb = ar->wmi.ops->gen_pdev_set_wmm(ar, arg);
	if (FUNC0(skb))
		return FUNC1(skb);

	return FUNC2(ar, skb,
				   ar->wmi.cmd->pdev_set_wmm_params_cmdid);
}