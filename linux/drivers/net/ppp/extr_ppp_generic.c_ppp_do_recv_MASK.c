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
struct ppp {int /*<<< orphan*/  closing; } ;
struct channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ppp*,struct sk_buff*,struct channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct ppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ppp*) ; 

__attribute__((used)) static inline void
FUNC4(struct ppp *ppp, struct sk_buff *skb, struct channel *pch)
{
	FUNC2(ppp);
	if (!ppp->closing)
		FUNC1(ppp, skb, pch);
	else
		FUNC0(skb);
	FUNC3(ppp);
}