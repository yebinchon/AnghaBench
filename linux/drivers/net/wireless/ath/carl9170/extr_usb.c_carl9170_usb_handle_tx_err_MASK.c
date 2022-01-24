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
struct urb {scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct ar9170 {int /*<<< orphan*/  tx_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ar9170 *ar)
{
	struct urb *urb;

	while ((urb = FUNC3(&ar->tx_err))) {
		struct sk_buff *skb = (void *)urb->context;

		FUNC1(ar, skb);
		FUNC0(ar, skb);
		FUNC2(urb);
	}
}