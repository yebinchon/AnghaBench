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
struct ar9170 {int /*<<< orphan*/  tx_anch; int /*<<< orphan*/  tx_cmd; int /*<<< orphan*/  tx_wait; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct ar9170 *ar)
{
	struct urb *urb;
	int ret, err = 0;

	while ((urb = FUNC4(&ar->tx_wait))) {
		struct sk_buff *skb = (void *)urb->context;
		FUNC1(ar, skb);
		FUNC0(ar, skb);
		FUNC3(urb);
	}

	ret = FUNC6(&ar->tx_cmd, 1000);
	if (ret == 0)
		err = -ETIMEDOUT;

	/* lets wait a while until the tx - queues are dried out */
	ret = FUNC6(&ar->tx_anch, 1000);
	if (ret == 0)
		err = -ETIMEDOUT;

	FUNC5(&ar->tx_anch);
	FUNC2(ar);

	return err;
}