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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {TYPE_2__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {int /*<<< orphan*/  dbglog_cfg_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_dbglog_cfg ) (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(struct ath10k *ar, u64 module_enable, u32 log_level)
{
	struct sk_buff *skb;

	if (!ar->wmi.ops->gen_dbglog_cfg)
		return -EOPNOTSUPP;

	skb = ar->wmi.ops->gen_dbglog_cfg(ar, module_enable, log_level);
	if (FUNC0(skb))
		return FUNC1(skb);

	return FUNC2(ar, skb, ar->wmi.cmd->dbglog_cfg_cmdid);
}