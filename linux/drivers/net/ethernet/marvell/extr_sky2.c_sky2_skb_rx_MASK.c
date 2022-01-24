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
struct sky2_port {TYPE_1__* hw; } ;
struct sk_buff {scalar_t__ ip_summed; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC2(const struct sky2_port *sky2,
			       struct sk_buff *skb)
{
	if (skb->ip_summed == CHECKSUM_NONE)
		FUNC1(skb);
	else
		FUNC0(&sky2->hw->napi, skb);
}