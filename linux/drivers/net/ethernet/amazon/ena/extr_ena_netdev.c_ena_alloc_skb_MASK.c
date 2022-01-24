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
struct TYPE_2__ {int /*<<< orphan*/  skb_alloc_fail; } ;
struct ena_ring {int /*<<< orphan*/  netdev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  syncp; TYPE_1__ rx_stats; int /*<<< orphan*/  rx_copybreak; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct ena_ring *rx_ring, bool frags)
{
	struct sk_buff *skb;

	if (frags)
		skb = FUNC0(rx_ring->napi);
	else
		skb = FUNC1(rx_ring->netdev,
						rx_ring->rx_copybreak);

	if (FUNC5(!skb)) {
		FUNC3(&rx_ring->syncp);
		rx_ring->rx_stats.skb_alloc_fail++;
		FUNC4(&rx_ring->syncp);
		FUNC2(rx_ring->adapter, rx_err, rx_ring->netdev,
			  "Failed to allocate skb. frags: %d\n", frags);
		return NULL;
	}

	return skb;
}