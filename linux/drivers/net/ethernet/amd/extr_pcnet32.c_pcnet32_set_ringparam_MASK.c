#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_4__ {int weight; } ;
struct pcnet32_private {int tx_ring_size; int rx_ring_size; int /*<<< orphan*/  lock; TYPE_2__ napi; TYPE_1__* a; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct ethtool_ringparam {int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  tx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* write_csr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR0_NORMAL ; 
 int /*<<< orphan*/  CSR0_STOP ; 
 int EINVAL ; 
 int PCNET32_LOG_MAX_RX_BUFFERS ; 
 int PCNET32_LOG_MAX_TX_BUFFERS ; 
 scalar_t__ RX_MAX_RING_SIZE ; 
 scalar_t__ TX_MAX_RING_SIZE ; 
 int /*<<< orphan*/  drv ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcnet32_private*,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct pcnet32_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct pcnet32_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev,
				 struct ethtool_ringparam *ering)
{
	struct pcnet32_private *lp = FUNC1(dev);
	unsigned long flags;
	unsigned int size;
	ulong ioaddr = dev->base_addr;
	int i;

	if (ering->rx_mini_pending || ering->rx_jumbo_pending)
		return -EINVAL;

	if (FUNC3(dev))
		FUNC5(dev);

	FUNC9(&lp->lock, flags);
	lp->a->write_csr(ioaddr, CSR0, CSR0_STOP);	/* stop the chip */

	size = FUNC0(ering->tx_pending, (unsigned int)TX_MAX_RING_SIZE);

	/* set the minimum ring size to 4, to allow the loopback test to work
	 * unchanged.
	 */
	for (i = 2; i <= PCNET32_LOG_MAX_TX_BUFFERS; i++) {
		if (size <= (1 << i))
			break;
	}
	if ((1 << i) != lp->tx_ring_size)
		FUNC7(dev, lp, i);

	size = FUNC0(ering->rx_pending, (unsigned int)RX_MAX_RING_SIZE);
	for (i = 2; i <= PCNET32_LOG_MAX_RX_BUFFERS; i++) {
		if (size <= (1 << i))
			break;
	}
	if ((1 << i) != lp->rx_ring_size)
		FUNC6(dev, lp, i);

	lp->napi.weight = lp->rx_ring_size / 2;

	if (FUNC3(dev)) {
		FUNC4(dev);
		FUNC8(dev, CSR0_NORMAL);
	}

	FUNC10(&lp->lock, flags);

	FUNC2(lp, drv, dev, "Ring Param Settings: RX: %d, TX: %d\n",
		   lp->rx_ring_size, lp->tx_ring_size);

	return 0;
}