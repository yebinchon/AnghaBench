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
struct wmi_vdev_spectral_conf_arg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int /*<<< orphan*/  vdev_spectral_scan_configure_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_vdev_spectral_conf ) (struct ath10k*,struct wmi_vdev_spectral_conf_arg const*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct ath10k*,struct wmi_vdev_spectral_conf_arg const*) ; 

__attribute__((used)) static inline int
FUNC4(struct ath10k *ar,
			      const struct wmi_vdev_spectral_conf_arg *arg)
{
	struct sk_buff *skb;
	u32 cmd_id;

	if (!ar->wmi.ops->gen_vdev_spectral_conf)
		return -EOPNOTSUPP;

	skb = ar->wmi.ops->gen_vdev_spectral_conf(ar, arg);
	if (FUNC0(skb))
		return FUNC1(skb);

	cmd_id = ar->wmi.cmd->vdev_spectral_scan_configure_cmdid;
	return FUNC2(ar, skb, cmd_id);
}