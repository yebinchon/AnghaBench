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
struct nfp_app {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfp_app*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

struct sk_buff *
FUNC3(struct nfp_app *app, unsigned int size, gfp_t priority)
{
	struct sk_buff *skb;

	if (FUNC1(app))
		size += 8;

	skb = FUNC0(size, priority);
	if (!skb)
		return NULL;

	if (FUNC1(app))
		FUNC2(skb, 8);

	return skb;
}