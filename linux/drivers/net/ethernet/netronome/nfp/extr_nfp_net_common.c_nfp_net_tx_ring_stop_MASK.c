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
struct nfp_net_tx_ring {int dummy; } ;
struct netdev_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net_tx_ring*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct netdev_queue *nd_q,
				 struct nfp_net_tx_ring *tx_ring)
{
	FUNC1(nd_q);

	/* We can race with the TX completion out of NAPI so recheck */
	FUNC3();
	if (FUNC4(FUNC2(tx_ring)))
		FUNC0(nd_q);
}