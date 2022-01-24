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
struct net_device {int dummy; } ;
struct ioc3_private {int rx_pi; scalar_t__ rx_ci; int /*<<< orphan*/ * rxr; int /*<<< orphan*/ * rx_skbs; } ;
struct ioc3_erxbuf {scalar_t__ w0; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI64_ATTR_BAR ; 
 int RX_BUFFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ioc3_private*,int /*<<< orphan*/ *,struct ioc3_erxbuf**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ioc3_private* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ioc3_private *ip = FUNC3(dev);
	struct ioc3_erxbuf *rxb;
	dma_addr_t d;
	int i;

	/* Now the rx buffers.  The RX ring may be larger but
	 * we only allocate 16 buffers for now.  Need to tune
	 * this for performance and memory later.
	 */
	for (i = 0; i < RX_BUFFS; i++) {
		if (FUNC1(ip, &ip->rx_skbs[i], &rxb, &d))
			return -ENOMEM;

		rxb->w0 = 0;	/* Clear valid flag */
		ip->rxr[i] = FUNC0(FUNC2(d, PCI64_ATTR_BAR));
	}
	ip->rx_ci = 0;
	ip->rx_pi = RX_BUFFS;

	return 0;
}