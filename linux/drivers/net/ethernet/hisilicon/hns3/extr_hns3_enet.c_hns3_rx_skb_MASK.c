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
struct sk_buff {int dummy; } ;
struct hns3_enet_ring {TYPE_1__* tqp_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct hns3_enet_ring *ring, struct sk_buff *skb)
{
	if (FUNC2(skb))
		FUNC0(&ring->tqp_vector->napi, false);

	FUNC1(&ring->tqp_vector->napi, skb);
}