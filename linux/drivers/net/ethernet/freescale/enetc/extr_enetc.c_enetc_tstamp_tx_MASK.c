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
typedef  int /*<<< orphan*/  u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  shhwtstamps ;
struct TYPE_2__ {int tx_flags; } ;

/* Variables and functions */
 int SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb, u64 tstamp)
{
	struct skb_shared_hwtstamps shhwtstamps;

	if (FUNC2(skb)->tx_flags & SKBTX_IN_PROGRESS) {
		FUNC0(&shhwtstamps, 0, sizeof(shhwtstamps));
		shhwtstamps.hwtstamp = FUNC1(tstamp);
		FUNC3(skb, &shhwtstamps);
	}
}