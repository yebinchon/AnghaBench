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
struct TYPE_6__ {TYPE_1__* cmd; TYPE_2__* ops; } ;
struct ath10k {TYPE_3__ wmi; } ;
struct TYPE_5__ {struct sk_buff* (* gen_beacon_dma ) (struct ath10k*,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  pdev_send_bcn_cmdid; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct ath10k*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct ath10k*,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline int
FUNC5(struct ath10k *ar, u32 vdev_id,
				  const void *bcn, size_t bcn_len,
				  u32 bcn_paddr, bool dtim_zero,
				  bool deliver_cab)
{
	struct sk_buff *skb;
	int ret;

	if (!ar->wmi.ops->gen_beacon_dma)
		return -EOPNOTSUPP;

	skb = ar->wmi.ops->gen_beacon_dma(ar, vdev_id, bcn, bcn_len, bcn_paddr,
					  dtim_zero, deliver_cab);
	if (FUNC0(skb))
		return FUNC1(skb);

	ret = FUNC2(ar, skb,
					 ar->wmi.cmd->pdev_send_bcn_cmdid);
	if (ret) {
		FUNC3(skb);
		return ret;
	}

	return 0;
}