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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ns83820 {TYPE_1__ rx_info; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ GFP_ATOMIC ; 
 unsigned int NR_RX_DESC ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ REAL_RX_BUF_SIZE ; 
 struct sk_buff* FUNC2 (struct net_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct net_device*) ; 
 int FUNC4 (struct ns83820*) ; 
 long FUNC5 (struct ns83820*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static inline int FUNC10(struct net_device *ndev, gfp_t gfp)
{
	struct ns83820 *dev = FUNC0(ndev);
	unsigned i;
	unsigned long flags = 0;

	if (FUNC9(FUNC4(dev) <= 2))
		return 0;

	FUNC3("rx_refill(%p)\n", ndev);
	if (gfp == GFP_ATOMIC)
		FUNC7(&dev->rx_info.lock, flags);
	for (i=0; i<NR_RX_DESC; i++) {
		struct sk_buff *skb;
		long res;

		/* extra 16 bytes for alignment */
		skb = FUNC2(ndev, REAL_RX_BUF_SIZE+16, gfp);
		if (FUNC9(!skb))
			break;

		FUNC6(skb, skb->data - FUNC1(skb->data, 16));
		if (gfp != GFP_ATOMIC)
			FUNC7(&dev->rx_info.lock, flags);
		res = FUNC5(dev, skb);
		if (gfp != GFP_ATOMIC)
			FUNC8(&dev->rx_info.lock, flags);
		if (res) {
			i = 1;
			break;
		}
	}
	if (gfp == GFP_ATOMIC)
		FUNC8(&dev->rx_info.lock, flags);

	return i ? 0 : -ENOMEM;
}