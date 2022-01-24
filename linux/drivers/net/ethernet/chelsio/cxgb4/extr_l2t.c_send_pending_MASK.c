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
struct sk_buff {int dummy; } ;
struct l2t_entry {int /*<<< orphan*/  arpq; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct adapter *adap, struct l2t_entry *e)
{
	struct sk_buff *skb;

	while ((skb = FUNC0(&e->arpq)) != NULL)
		FUNC1(adap, skb);
}