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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct bcom_task {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FEC_RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct bcom_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct bcom_task *rxtsk)
{
	struct sk_buff *skb;

	while (!FUNC0(rxtsk)) {
		skb = FUNC3(dev, FEC_RX_BUFFER_SIZE);
		if (!skb)
			return -EAGAIN;

		/* zero out the initial receive buffers to aid debugging */
		FUNC1(skb->data, 0, FEC_RX_BUFFER_SIZE);
		FUNC2(dev, skb);
	}
	return 0;
}