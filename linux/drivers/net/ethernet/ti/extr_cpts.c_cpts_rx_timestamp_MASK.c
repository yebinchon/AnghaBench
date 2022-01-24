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
typedef  int /*<<< orphan*/  u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct cpts {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPTS_EV_RX ; 
 int /*<<< orphan*/  FUNC0 (struct cpts*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct skb_shared_hwtstamps* FUNC3 (struct sk_buff*) ; 

void FUNC4(struct cpts *cpts, struct sk_buff *skb)
{
	u64 ns;
	struct skb_shared_hwtstamps *ssh;

	ns = FUNC0(cpts, skb, CPTS_EV_RX);
	if (!ns)
		return;
	ssh = FUNC3(skb);
	FUNC1(ssh, 0, sizeof(*ssh));
	ssh->hwtstamp = FUNC2(ns);
}