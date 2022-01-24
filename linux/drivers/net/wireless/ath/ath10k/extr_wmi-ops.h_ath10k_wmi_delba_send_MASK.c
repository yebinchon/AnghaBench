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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {TYPE_3__* cmd; TYPE_1__* ops; } ;
struct ath10k {TYPE_2__ wmi; } ;
struct TYPE_6__ {int /*<<< orphan*/  delba_send_cmdid; } ;
struct TYPE_4__ {struct sk_buff* (* gen_delba_send ) (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(struct ath10k *ar, u32 vdev_id, const u8 *mac,
		      u32 tid, u32 initiator, u32 reason)
{
	struct sk_buff *skb;

	if (!ar->wmi.ops->gen_delba_send)
		return -EOPNOTSUPP;

	skb = ar->wmi.ops->gen_delba_send(ar, vdev_id, mac, tid, initiator,
					  reason);
	if (FUNC0(skb))
		return FUNC1(skb);

	return FUNC2(ar, skb,
				   ar->wmi.cmd->delba_send_cmdid);
}