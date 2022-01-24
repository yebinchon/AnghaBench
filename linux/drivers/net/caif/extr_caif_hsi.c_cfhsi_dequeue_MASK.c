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
struct cfhsi {int /*<<< orphan*/ * qhead; } ;

/* Variables and functions */
 int CFHSI_PRIO_LAST ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC1(struct cfhsi *cfhsi)
{
	struct sk_buff *skb;
	int i;

	for (i = 0; i < CFHSI_PRIO_LAST; ++i) {
		skb = FUNC0(&cfhsi->qhead[i]);
		if (skb)
			break;
	}

	return skb;
}