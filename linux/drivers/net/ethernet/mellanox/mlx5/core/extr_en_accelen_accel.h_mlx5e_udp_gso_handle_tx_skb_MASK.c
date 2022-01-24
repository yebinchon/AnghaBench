#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int gso_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline void
FUNC3(struct sk_buff *skb)
{
	int payload_len = FUNC1(skb)->gso_size + sizeof(struct udphdr);

	FUNC2(skb)->len = FUNC0(payload_len);
}